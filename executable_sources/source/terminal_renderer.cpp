#include "picr/terminal_renderer.hpp"
#include "picr/editor.hpp"
#include <ftxui/dom/elements.hpp>
#include <ftxui/screen/color.hpp>

#include "ftxui/component/captured_mouse.hpp"     // for ftxui
#include "ftxui/component/component.hpp"          // for Input, Renderer, Vertical
#include "ftxui/component/component_base.hpp"     // for ComponentBase
#include "ftxui/component/component_options.hpp"  // for InputOption
#include "ftxui/component/screen_interactive.hpp" // for Component, ScreenInteractive
#include "ftxui/dom/elements.hpp"                 // for text, hbox, separator, Element, operator|, vbox, border
#include "ftxui/util/ref.hpp"                     // for Refor operator|, separator, text, Element, flex, vbox, border

#include <chrono> // for operator""s, chrono_literals
#include <SFML/System.hpp>

#include "picr/file_reader.hpp"
#include "picr/file_writer.hpp"

using namespace ftxui;
using namespace std::chrono_literals;

TerminalRenderer::TerminalRenderer(const ftxui::Element &currentScreenElements) : currentScreenElements(std::make_shared<ftxui::Element>(currentScreenElements)),
                                                                                  currentScreenInteractive(ScreenInteractive::Fullscreen())
{

    // Add a border to the elements
    *this->currentScreenElements |= border;

    const int min_width = 40;
    *this->currentScreenElements |= size(HEIGHT, GREATER_THAN, min_width);
}

TerminalRenderer::TerminalRenderer(const ftxui::Component &currentScreenComponent) : currentScreenComponentToRender(std::make_shared<ftxui::Component>(currentScreenComponent)),
                                                                                     currentScreenInteractive(ScreenInteractive::Fullscreen())
{

    *this->currentScreenComponentToRender |= border;
};

void TerminalRenderer::startTerminalRendererThreadForElements()
{
    for (int i = 0;; ++i)
    {
        Render(currentScreenInteractive, *currentScreenElements);
        currentScreenInteractive.Print();

        const auto sleep_time = 0.03s;
        std::this_thread::sleep_for(sleep_time);
    }
}

void TerminalRenderer::startTerminalRendererThreadForComponentsHelperFunction()
{
    this->currentScreenInteractive.Loop(*this->currentScreenComponentToRender);
}

void TerminalRenderer::joinThreadInstanceForRenderer()
{
    this->threadInstanceForRenderer->wait(); // This will wait for the thread to finish, in our case it will not finish
}

void TerminalRenderer::startTerminalRendererThreadForComponents()
{
    // Start an sf::Thread to render the component
    this->threadInstanceForRenderer = std::make_shared<sf::Thread>(
        [this]
        {
            this->startTerminalRendererThreadForComponentsHelperFunction();
        });
    this->threadInstanceForRenderer->launch();
}

void TerminalRenderer::setCurrentScreenComponentToRender(const ftxui::Component &component)
{
    this->rendererMutex.lock();
    this->currentScreenComponentToRender = std::make_shared<ftxui::Component>(component);
    this->rendererMutex.unlock();
}

void TerminalRenderer::setCurrentScreenComponentToRender(ftxui::Component &&component)
{
    this->rendererMutex.lock();
    this->currentScreenComponentToRender = std::make_shared<ftxui::Component>(component);
    this->rendererMutex.unlock();
}

void TerminalRenderer::setCurrentScreenElements(const ftxui::Element &element)
{
    this->rendererMutex.lock();
    this->currentScreenElements = std::make_shared<ftxui::Element>(element);
    this->rendererMutex.unlock();
}

void TerminalRenderer::setCurrentScreenElements(ftxui::Element &&element)
{
    this->rendererMutex.lock();
    this->currentScreenElements = std::make_shared<ftxui::Element>(element);
    this->rendererMutex.unlock();
}

void TerminalRenderer::setInputStyle(const ftxui::InputOption &inputStyle)
{
    this->rendererMutex.lock();
    this->inputStyle = std::make_shared<ftxui::InputOption>(inputStyle);
    this->rendererMutex.unlock();
}

void TerminalRenderer::setInputStyle(ftxui::InputOption &&inputStyle)
{
    this->rendererMutex.lock();
    this->inputStyle = std::make_shared<ftxui::InputOption>(inputStyle);
    this->rendererMutex.unlock();
}

void TerminalRenderer::setCurrentOnScreenInputText(const std::string &currentOnScreenInputText)
{
    this->rendererMutex.lock();
    this->currentOnScreenInputText = currentOnScreenInputText;
    this->rendererMutex.unlock();
}

void TerminalRenderer::setCurrentOnScreenInputText(std::string &&currentOnScreenInputText)
{
    this->rendererMutex.lock();
    this->currentOnScreenInputText = currentOnScreenInputText;
    this->rendererMutex.unlock();
}

void TerminalRenderer::setCurrentOnScreenInputComponent(const ftxui::Component &currentOnScreenInputComponent)
{
    this->rendererMutex.lock();
    this->currentOnScreenInputComponent = std::make_shared<ftxui::Component>(currentOnScreenInputComponent);
    this->rendererMutex.unlock();
}

void TerminalRenderer::setCurrentOnScreenInputComponent(ftxui::Component &&currentOnScreenInputComponent)
{
    this->rendererMutex.lock();
    this->currentOnScreenInputComponent = std::make_shared<ftxui::Component>(currentOnScreenInputComponent);
    this->rendererMutex.unlock();
}

void TerminalRenderer::setCurrentMainTextAreaComponent(const ftxui::Component &currentMainTextAreaComponent)
{
    this->rendererMutex.lock();
    this->currentMainTextAreaComponent = std::make_shared<ftxui::Component>(currentMainTextAreaComponent);
    this->rendererMutex.unlock();
}

void TerminalRenderer::setCurrentMainTextAreaComponent(ftxui::Component &&currentMainTextAreaComponent)
{
    this->rendererMutex.lock();
    this->currentMainTextAreaComponent = std::make_shared<ftxui::Component>(currentMainTextAreaComponent);
    this->rendererMutex.unlock();
}

void TerminalRenderer::setMainAreaHandlerAttributes(std::function<bool(ftxui::Event)> on_event)
{
    this->rendererMutex.lock();
    *this->currentMainTextAreaComponent |= CatchEvent(on_event);
    this->rendererMutex.unlock();
}

void TerminalRenderer::setMainAreaHandlerAttributesDefaultFunction(PiCrEditor &editor, FileReader &fileReader, FileWriter &fileWriter)
{
    this->rendererMutex.lock();
    *this->currentMainTextAreaComponent |= CatchEvent([&](Event event)
                                                      {
        auto reset_layout_helper_function = [&] () {
            // Lock the mutex
            this->rendererMutex.lock();
            this->setCurrentMainTextAreaComponent(Input(&this->getCurrentOnScreenInputText(), "This file is empty.", 
                        *this->getInputStyle()
                    ) | color(Color::DarkBlue)); 
            ftxui::Component layout = *this->getCurrentMainTextAreaComponent() | ftxui::border;
            this->setCurrentScreenComponentToRender(Renderer(layout, [&] {
                return vbox({
                        text("PiCr Version 0.0.1"),
                        separator(),
                        layout->Render() | flex,
                        text("Press ESC to enter Visual mode."),
                        text("Press SHIFT+I to enter Insert mode."),
                        separator(),
                        text("Current file path: " + editor.getFilePath()),
                        text("Current mode " + std::string(editor.getEditorMode())),
                    }) | border | color(Color::BlueLight);
            }));
            // Unlock the mutex
            this->rendererMutex.unlock();
        };

        // If we are with the editor in visual mode
        if (event == Event::Escape) {
            // Set the editor mode to command
            editor.setEditorMode(PiCrEditor::EDITOR_STATE_VISUAL);
            return true;
        }

        switch (editor.getEditorModeAsShort())
        {
            case PiCrEditor::EDITOR_STATE_VISUAL:
                if (event == Event::Character('I')) {
                    // Set the editor mode to insert
                    editor.setEditorMode(PiCrEditor::EDITOR_STATE_INSERT);
                    return true;
                }

                if (event == Event::Character('C')){
                    // Set the editor mode to command
                    editor.setEditorMode(PiCrEditor::EDITOR_STATE_COMMAND);
                    return true;
                }

                if (event == Event::Character('/')) {
                    // Set the editor mode to command
                    editor.setEditorMode(PiCrEditor::EDITOR_STATE_SEARCH);
                    return true;
                }

                if (event == Event::Character('Q')) {
                    // Set the editor mode to command
                    editor.setEditorMode(PiCrEditor::EDITOR_STATE_QUIT);
                    // Quit the editor
                    this->currentScreenInteractive.ExitLoopClosure()();
                    return true;
                }

                // If we have S, then we need to save the file
                if (event == Event::Character('S')) {

                    // Set the editor mode to command
                    editor.setFileBuffer(this->currentOnScreenInputText + "\n"); // Set the file buffer to the current content
                    editor.saveFile();

                    // Set the new content to the file buffer
                    fileReader.refreshFileLines(); // Refresh the file lines
                    this->setCurrentOnScreenInputText(fileReader.getFileContentAsString());
                    // Reset the layout
                    reset_layout_helper_function();
                    // Set the file buffer to the current content
                    return true;
                }

                // If it is a character, then we need to insert it into the file buffer
                if (event.is_character()) {
                    // Insert the character into the file buffer
                    return true;
                }

                break;

            case PiCrEditor::EDITOR_STATE_INSERT:
                break;

            case PiCrEditor::EDITOR_STATE_COMMAND:
                break;

            case PiCrEditor::EDITOR_STATE_SEARCH:
                break;

            case PiCrEditor::EDITOR_STATE_QUIT:
                break;
            
            default:
                return false;
        }

        

        return false; });
    this->rendererMutex.unlock();
}

void TerminalRenderer::setThreadInstanceForRenderer(const std::shared_ptr<sf::Thread> &threadInstanceForRenderer)
{
    this->rendererMutex.lock();
    this->threadInstanceForRenderer = threadInstanceForRenderer;
    this->rendererMutex.unlock();
}

std::shared_ptr<ftxui::Element> &TerminalRenderer::getCurrentScreenElements()
{
    return this->currentScreenElements;
}

std::shared_ptr<ftxui::Component> &TerminalRenderer::getCurrentScreenComponentToRender()
{
    return this->currentScreenComponentToRender;
}

std::shared_ptr<sf::Thread> &TerminalRenderer::getThreadInstanceForRenderer()
{
    return this->threadInstanceForRenderer;
}

ftxui::ScreenInteractive &TerminalRenderer::getCurrentScreenInteractive()
{
    return this->currentScreenInteractive;
}

// Creates a new pointer that points to a new InputOption
void TerminalRenderer::setTerminalRendererInputStyle(const ftxui::InputOption &inputStyle)
{
    this->inputStyle = std::make_shared<ftxui::InputOption>(inputStyle);
}

std::shared_ptr<ftxui::InputOption> &TerminalRenderer::getInputStyle()
{
    return this->inputStyle;
}

std::string &TerminalRenderer::getCurrentOnScreenInputText()
{
    return this->currentOnScreenInputText;
}

std::shared_ptr<ftxui::Component> &TerminalRenderer::getCurrentOnScreenInputComponent()
{
    return this->currentOnScreenInputComponent;
}

std::shared_ptr<ftxui::Component> &TerminalRenderer::getCurrentMainTextAreaComponent()
{
    return this->currentMainTextAreaComponent;
}
