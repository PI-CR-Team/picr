#pragma once
#include <string>
#include <vector>

class Line {
protected:
    std::string content;
    std::vector <std::string> words;
public:
    Line(const std::string& content) : content(content) {
        std::istringstream lineStream(content);
        // Split the line into tokens based on whitespace
        std::string word;
        while (lineStream >> word) {
            words.push_back(word);
        }
    }

    const std::string& getContent() const {
        return this->content;
    }
    const std::vector<std::string> & getWords() const{
        return this->words;
    }
};