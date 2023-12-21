#pragma once
#include <filesystem>
#include <picr/line.hpp>

class FileWriter
{
private:
    std::filesystem::path filePath;
    std::vector<Line> fileBufferToBeWritten;

public:
    FileWriter(const std::filesystem::path &filePath);

    void writeToFile(); // This will write the contents of the buffer to the file

    void appendLine(const Line &line);

    // We will use mostly this method to append the lines, the rest are just part of the API
    void appendLines(const std::vector<Line> &lines);

    void appendLines(const std::vector<std::string> &lines);

    void appendLines(const std::vector<char> &lines);

    void appendLines(const std::string &lines);

    void close();

    ~FileWriter() = default;

    // Getters and setters
    const std::filesystem::path &getFilePath() const;
    void setFilePath(const std::filesystem::path &filePath);

    const std::vector<Line> &getFileBufferToBeWritten() const;
    void setFileBufferToBeWritten(const std::vector<Line> &fileBufferToBeWritten);
};