#include <iostream>
#include <filesystem>
#include <vector>
#include "picr/terminal_renderer.h"
#include "picr/file_reader.h"

#include "cpp-terminal/terminal.hpp"
#include "cpp-terminal/color.hpp"

constexpr bool IS_DEBUG_ENABLED = false;

using namespace std;
namespace fs = std::filesystem;

int main(int argc, char** argv) {
    TerminalRenderer renderer;

    std::cout << Term::color_fg(Term::Color::Name::Red)<<"Hello world !"<<color_fg(Term::Color::Name::Default)<< std::endl;

    // Check if a command-line argument is provided
    if (argc < 2) {
        std::cout << "Usage: " << argv[0] << " <filename>" << endl;
        return EXIT_FAILURE;
    }

    fs::path currentPath = fs::current_path();
    fs::path filePath = currentPath / argv[1];
    cout << "Full file path: " << filePath << endl;

    // Read the file
    FileReader fileReader(filePath.string());
    std::vector<Line> vec = fileReader.readWordsFromFile();
    
    if (IS_DEBUG_ENABLED) {
        for(const auto& line : vec) {
            std::cout<<std::string(line.getContent() + "\n");
        }
    }
    

    std::cout<<"Process ended\n";

    return 0;
}