#ifndef FILEREADER_HPP
#define FILEREADER_HPP

#include <iostream>
#include <fstream>
#include <vector>
#include <filesystem>
#include <memory>

#include "picr/line.hpp"

namespace fs = std::filesystem;

class FileReader
{
private:
    std::ifstream fileStream;
    std::string filePath;

    std::shared_ptr<std::vector<Line>> fileLines;
    std::string fileContentAsString;

public:
    FileReader(const std::string &filePath);

    void refreshFileLines();

    std::vector<char> readContent();

    std::vector<Line> readWordsFromFile();

    std::vector<std::string> readLinesFromFile();

    void close();

    ~FileReader();

    const std::vector<Line> *getFileLines() const;

    const std::string &getFileContentAsString() const;
};

#endif // FILEREADER_HPP