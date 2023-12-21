#pragma once

#include <string>
#include <vector>

class PiCrCommandParser
{
private:
    std::string command;
    std::vector<std::string> arguments;

public:
    // Implement here
    PiCrCommandParser(const std::string &command);

    const std::string &getCommand() const;
    const std::vector<std::string> &getArguments() const;

    ~PiCrCommandParser();
};