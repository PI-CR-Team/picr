#pragma once
#include "picr/file_writer.hpp"

#include <filesystem>
#include <fstream>

namespace fs = std::filesystem;

FileWriter::FileWriter(const std::filesystem::path& filePath) : filePath(filePath) {
    // Create the file if it doesn't exist
    if (!fs::exists(filePath)) {
        std::ofstream fileStream(filePath);
        fileStream.close();
    }
}

void FileWriter::writeToFile() {
    std::ofstream fileStream(filePath);

    for (const auto& line : fileBufferToBeWritten) {
        fileStream << line.getContent() << std::endl;
    }

    fileStream.close();
}

void FileWriter::appendLine(const Line& line) {
    fileBufferToBeWritten.push_back(line);
}

void FileWriter::appendLines(const std::vector<Line>& lines) {
    fileBufferToBeWritten.insert(fileBufferToBeWritten.end(), lines.begin(), lines.end());
}

void FileWriter::appendLines(const std::vector<std::string>& lines) {
    for (const auto& line : lines) {
        fileBufferToBeWritten.push_back(Line(line));
    }
}

void FileWriter::appendLines(const std::vector<char>& lines) {
    for (const auto& line : lines) {
        fileBufferToBeWritten.push_back(Line(std::string(1, line)));
    }
}

void FileWriter::appendLines(const std::string& lines) {
    for (const auto& line : lines) {
        fileBufferToBeWritten.push_back(Line(std::string(1, line)));
    }
}

void FileWriter::close() {
    std::ofstream fileStream(filePath);

    for (const auto& line : fileBufferToBeWritten) {
        fileStream << line.getContent() << std::endl;
    }

    fileStream.close();
}

// Getters and setters
const std::filesystem::path& FileWriter::getFilePath() const {
    return filePath;
}

void FileWriter::setFilePath(const std::filesystem::path& filePath) {
    FileWriter::filePath = filePath;
}

const std::vector<Line>& FileWriter::getFileBufferToBeWritten() const {
    return fileBufferToBeWritten;
}

void FileWriter::setFileBufferToBeWritten(const std::vector<Line>& fileBufferToBeWritten) {
    FileWriter::fileBufferToBeWritten = fileBufferToBeWritten;
}
