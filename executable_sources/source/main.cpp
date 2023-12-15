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
#include "ftxui/screen/color.hpp"  // for Color, Color::BlueLight, Color::RedLight, Color::YellowLight, ftxui
#include "ftxui/component/captured_mouse.hpp"  // for ftxui
#include "ftxui/component/component.hpp"  // for Input, Renderer, ResizableSplitLeft
#include "ftxui/component/component_base.hpp"  // for ComponentBase, Component
#include "ftxui/component/screen_interactive.hpp"  // for ScreenInteractive
#include "ftxui/dom/elements.hpp"  // for operator|, separator, text, Element, flex, vbox, border

// #include "picr/terminal_renderer.hpp"
#include "picr/file_reader.hpp"

using namespace std;
namespace fs = std::filesystem;

constexpr bool IS_DEBUG_ENABLED = true;

int main(int argc, char** argv) {
    using namespace ftxui;
    
    if (argc < 2) {
        std::cout << "Usage: " << argv[0] << " <filename>" << std::endl;
        return EXIT_FAILURE;
    }
    
    fs::path currentPath = fs::current_path();
    fs::path filePath = currentPath / argv[1];
    cout << "Full file path: " << filePath << endl;

    // Read the file
    try {
        FileReader fileReader(filePath.string());
        std::vector<Line> vec = fileReader.readWordsFromFile();

        if (IS_DEBUG_ENABLED) {
            for(const auto& line : vec) {
                std::cout<<std::string(line.getContent() + "\n");
            }
        }

        std::string content = fileReader.getFileContentAsString();
        auto textarea_1 = Input(&content);
        auto textarea_2 = Input(&content);
        int size = 50;
        auto layout = ResizableSplitLeft(textarea_1, textarea_2, &size);

        auto component = Renderer(layout, [&] {
            return vbox({
                    text("Input:"),
                    separator(),
                    layout->Render() | flex,
                }) | border;
        });

        auto screen = ScreenInteractive::Fullscreen();
        screen.Loop(component);

        // TerminalRenderer renderer(layout);
        // renderer.startTerminalRendererThread();

        // TerminalRenderer screenRenderer();

    } catch (const std::exception& e) {
        // Eventually implement the new file functionality here

        std::cerr << "Error reading from file!" << std::endl;
        return EXIT_FAILURE;
    }

    return 0;
}

