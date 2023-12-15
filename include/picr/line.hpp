#pragma once
#include <string>
#include <vector>
#include <sstream>

class Line {
protected:
    std::string content;
    std::vector<std::string> words;

public:
    Line(const std::string& content);
    
    const std::string& getContent() const;
    const std::vector<std::string>& getWords() const;
};