#include "picr/line.hpp"

Line::Line(const std::string& content) : content(content) {
    std::istringstream lineStream(content);
    
    // Split the line into tokens based on whitespace
    std::string word;
    while (lineStream >> word) {
        words.push_back(word);
    }
}

const std::string& Line::getContent() const {
    return this->content;
}

const std::vector<std::string>& Line::getWords() const {
    return this->words;
}