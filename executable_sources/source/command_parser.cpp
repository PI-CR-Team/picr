#include "picr/command_parser.hpp"  

#include <string>


PiCrCommandParser::PiCrCommandParser(const std::string& command) {
    this->command = command;
    this->arguments = std::vector<std::string>();
    std::string argument = "";
    bool isArgument = false;
    for (const auto& character : command) {
        if (character == ' ') {
            if (isArgument) {
                arguments.push_back(argument);
                argument = "";
                isArgument = false;
            }
        } else {
            argument += character;
            isArgument = true;
        }
    }
    if (isArgument) {
        arguments.push_back(argument);
    }
}

const std::string& PiCrCommandParser::getCommand() const {
    return command;
}

const std::vector<std::string>& PiCrCommandParser::getArguments() const {
    return arguments;
}

PiCrCommandParser::~PiCrCommandParser() = default;