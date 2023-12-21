#pragma once
#include <string>
#include <vector>
#include <sstream>

class Line
{
protected:
    std::string content;
    std::vector<std::string> words;

public:
    Line(const std::string &content);
    Line(const Line &line) = default;

    const std::string &getContent() const;
    const std::vector<std::string> &getWords() const;

    Line &operator=(const Line &line);
    ~Line();
};