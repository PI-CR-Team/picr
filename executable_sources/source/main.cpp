#include <chrono>
#include <cmath>
#include <functional>
#include <iostream>
#include <memory>
#include <string>
#include <thread>
#include <vector>
#include <filesystem>

#include "ftxui/dom/node.hpp"
#include "ftxui/screen/color.hpp"                 // for Color, Color::BlueLight, Color::RedLight, Color::YellowLight, ftxui
#include "ftxui/component/captured_mouse.hpp"     // for ftxui
#include "ftxui/component/component.hpp"          // for Input, Renderer, ResizableSplitLeft
#include "ftxui/component/component_base.hpp"     // for ComponentBase, Component
#include "ftxui/component/screen_interactive.hpp" // for ScreenInteractive
#include "ftxui/dom/elements.hpp"                 // for operator|, separator, text, Element, flex, vbox, border

#include "picr/terminal_renderer.hpp"
#include "picr/file_reader.hpp"
#include "picr/lock_file.hpp"
#include "picr/editor.hpp"
#include "picr/file_writer.hpp"
#include "picr/auto_file_saver.hpp"

using namespace std;
namespace fs = std::filesystem;

constexpr bool IS_DEBUG_ENABLED = false;
const std::string PICR_VERSION = "PiCr Version 0.0.1";

int main(int argc, char **argv)
{
    using namespace ftxui;

    if (argc < 2)
    {
        std::cout << "Usage: " << argv[0] << " <filename>" << std::endl;
        return EXIT_FAILURE;
    }

    fs::path currentPath = fs::current_path();
    fs::path filePath = currentPath / argv[1];
    cout << "Full file path: " << filePath << endl;

    // We want to have 2 initial behaviours for the renderer, we either have a lock file or we don't on the file provided by the user
    try
    {
        // If the file exists
        if (fs::exists(filePath))
        {

            if (LockFile::isLocked(filePath))
            { // The file exists and it is locked
                std::cout << "File is locked by another process" << std::endl;

                // Replace with the reading from lockfile functionality
                // Create a dummy component that is not rendered but is used to get the interactive screen from the object
                auto component = Button({
                                     .label = "File is locked by another process.",
                                 }) |
                                 color(Color::RedLight);
                TerminalRenderer renderer(component); // Render the initial component

                auto main_textarea =
                    Button({
                        .label = "File is locked by another process. Press the screen to exit.",
                        .on_click = renderer.getCurrentScreenInteractive().ExitLoopClosure(),
                    }) |
                    color(Color::RedLight) | ftxui::border;

                component = Renderer(main_textarea, [&]
                                     { return vbox({
                                                  text(PICR_VERSION),
                                                  separator(),
                                                  text("File is locked by another process. Press the screen to exit. If you think this is an error, please delete the lock file and try again."),
                                                  text("Lock file path: " + filePath.string() + ".lock"),
                                                  main_textarea->Render() | flex,
                                              }) |
                                              border | color(Color::BlueLight); });

                renderer.setCurrentScreenComponentToRender(component);
                renderer.startTerminalRendererThreadForComponents();
                renderer.joinThreadInstanceForRenderer();

                std::cout << "Renderer exited" << std::endl;
            }
            else
            { // The file exists and is not locked
                LockFile::lockFile(filePath);
                FileReader fileReader(filePath.string());
                FileWriter fileWriter(filePath.string());

                // Start the editor thread on the current file
                TerminalRenderer renderer; // Fullscreen interactive component chosen by default
                PiCrEditor editor(filePath.string());
                // editor.startEditorMainThread();

                std::vector<Line> vec = fileReader.readWordsFromFile();
                if (IS_DEBUG_ENABLED)
                {
                    for (const auto &line : vec)
                    {
                        std::cout << std::string(line.getContent() + "\n");
                    }
                }

                // Set the style for the input component
                InputOption inputOptionsTextStyle = InputOption::Spacious();
                inputOptionsTextStyle.transform = [](InputState state)
                {
                    state.element |= borderEmpty;

                    if (state.is_placeholder)
                    {
                        state.element |= dim;
                    }

                    if (state.focused)
                    {
                        state.element |= borderDouble;
                        state.element |= bgcolor(Color::White);
                        state.element |= color(Color::Black);
                    }
                    else if (state.hovered)
                    {
                        state.element |= borderRounded;
                        state.element |= bgcolor(LinearGradient(90, Color::Blue, Color::Red));
                        state.element |= color(Color::White);
                    }
                    else
                    {
                        state.element |= border;
                        state.element |= bgcolor(LinearGradient(0, Color::Blue, Color::Red));
                        state.element |= color(Color::White);
                    }

                    return state.element;
                };
                renderer.setInputStyle(inputOptionsTextStyle);
                renderer.setCurrentOnScreenInputText(fileReader.getFileContentAsString());
                // Also set the editor file buffer to the current content
                editor.setFileBuffer(renderer.getCurrentOnScreenInputText()); // Set the file buffer to the current content

                renderer.setCurrentMainTextAreaComponent(Input(&renderer.getCurrentOnScreenInputText(), "The file is empty.",
                                                               inputOptionsTextStyle) |
                                                         color(Color::DarkBlue));

                // Use this to catch events from the input component
                renderer.setMainAreaHandlerAttributesDefaultFunction(editor, fileReader, fileWriter); // Set the default handler for the events happening inside the main area

                // Create a layout that just renders the textarea_1
                ftxui::Component layout = *renderer.getCurrentMainTextAreaComponent() | ftxui::border;
                renderer.setCurrentScreenComponentToRender(Renderer(layout, [&]
                                                                    { return vbox({
                                                                                 text(PICR_VERSION),
                                                                                 separator(),
                                                                                 layout->Render() | flex,
                                                                                 text("Press ESC to enter Visual mode."),
                                                                                 text("Press SHIFT+I to enter Insert mode."),
                                                                                 separator(),
                                                                                 text("Current file path: " + filePath.string()),
                                                                                 text("Current mode " + std::string(editor.getEditorMode())),
                                                                             }) |
                                                                             border | color(Color::BlueLight); }));

                // TerminalRenderer renderer(component); // Render the initial component
                renderer.startTerminalRendererThreadForComponents();
                
                // Start the auto file saver thread
                AutoFileSaver autoFileSaver(filePath.string(), renderer.getCurrentOnScreenInputText());
                autoFileSaver.start();

                renderer.joinThreadInstanceForRenderer(); // Wait for the renderer thread to finish
                // editor.joinEditorMainThread(); // Wait for the editor thread to finish

                LockFile::unlockFile(filePath);
                std::cout << "Renderer exited" << std::endl;
            }
        }
        else
        { // The file did not exist, create it
            // Create the file and open the editor
            std::ofstream fileStream(filePath);
            fileStream.close();

            // Editor opening on new file logic
            LockFile::lockFile(filePath);
            FileReader fileReader(filePath.string());
            FileWriter fileWriter(filePath.string());

            // Start the editor thread on the current file
            TerminalRenderer renderer; // Fullscreen interactive component chosen by default
            PiCrEditor editor(filePath.string());
            // editor.startEditorMainThread();

            std::vector<Line> vec = fileReader.readWordsFromFile();
            if (IS_DEBUG_ENABLED)
            {
                for (const auto &line : vec)
                {
                    std::cout << std::string(line.getContent() + "\n");
                }
            }

            // Set the style for the input component
            InputOption inputOptionsTextStyle = InputOption::Spacious();
            inputOptionsTextStyle.transform = [](InputState state)
            {
                state.element |= borderEmpty;

                if (state.is_placeholder)
                {
                    state.element |= dim;
                }

                if (state.focused)
                {
                    state.element |= borderDouble;
                    state.element |= bgcolor(Color::White);
                    state.element |= color(Color::Black);
                }
                else if (state.hovered)
                {
                    state.element |= borderRounded;
                    state.element |= bgcolor(LinearGradient(90, Color::Blue, Color::Red));
                    state.element |= color(Color::White);
                }
                else
                {
                    state.element |= border;
                    state.element |= bgcolor(LinearGradient(0, Color::Blue, Color::Red));
                    state.element |= color(Color::White);
                }

                return state.element;
            };
            renderer.setInputStyle(inputOptionsTextStyle);
            renderer.setCurrentOnScreenInputText(fileReader.getFileContentAsString());

            // Also set the editor file buffer to the current content
            editor.setFileBuffer(renderer.getCurrentOnScreenInputText()); // Set the file buffer to the current content

            renderer.setCurrentMainTextAreaComponent(Input(&renderer.getCurrentOnScreenInputText(), "The file did not exist so a new file was created. The file is empty. Please go into insert mode "
                                                                                                    "and start writing. Press SHIFT+I to enter Insert mode.",

                                                           inputOptionsTextStyle) |
                                                     color(Color::DarkBlue));

            // Use this to catch events from the input component
            renderer.setMainAreaHandlerAttributesDefaultFunction(editor, fileReader, fileWriter); // Set the default handler for the events happening inside the main area

            // Create a layout that just renders the textarea_1
            ftxui::Component layout = *renderer.getCurrentMainTextAreaComponent() | ftxui::border;
            renderer.setCurrentScreenComponentToRender(Renderer(layout, [&]
                                                                { return vbox({
                                                                             text(PICR_VERSION),
                                                                             separator(),
                                                                             layout->Render() | flex,
                                                                             text("Press ESC to enter Visual mode."),
                                                                             text("Press SHIFT+I to enter Insert mode."),
                                                                             separator(),
                                                                             text("Current file path: " + filePath.string()),
                                                                             text("Current mode " + std::string(editor.getEditorMode())),
                                                                         }) |
                                                                         border | color(Color::BlueLight); }));

            // TerminalRenderer renderer(component); // Render the initial component
            renderer.startTerminalRendererThreadForComponents();

            // Start the auto file saver thread
            AutoFileSaver autoFileSaver(filePath.string(), renderer.getCurrentOnScreenInputText());
            autoFileSaver.start();

            renderer.joinThreadInstanceForRenderer(); // Wait for the renderer thread to finish
            // editor.joinEditorMainThread(); // Wait for the editor thread to finish

            LockFile::unlockFile(filePath);
            std::cout << "Renderer exited" << std::endl;
        }
    }
    // If the file doesn't exist or there are any errors, create a temporary file with the given name. If the user issues a write buffer command, then write the content to the actual file
    catch (const std::exception &e)
    {
        std::cerr << "Error: " << e.what() << std::endl;
        LockFile::unlockFile(filePath);
        return EXIT_FAILURE;
    }

    return 0;
}
