#include "picr/file_reader.hpp"

FileReader::FileReader(const std::string& filePath) {
     if (!fs::exists(filePath)) {
            std::cerr << "Error: File not found - " << filePath << std::endl;
            throw std::exception();
        }

        this->filePath = filePath;
        // Open the file
        fileStream.open(filePath, std::ios::in);

        // Check if the file is opened successfully
        if (!fileStream.is_open()) {
            std::cerr << "Error opening file: " << filePath << std::endl;
            // You may choose to throw an exception or handle the error in another way.
            // For simplicity, we'll exit the program in case of an error.
            std::exit(EXIT_FAILURE);
        }
        fileLines = std::make_shared<std::vector<Line>>(readWordsFromFile()); // Fill in the file lines unique ptr
        
        for(const auto& line : *fileLines) {
            fileContentAsString += line.getContent() + "\n";
        }
}

std::vector<char> FileReader::readContent() {
     if (!fs::exists(this->filePath)) {
            std::cerr << "Error: File not found - " << filePath << std::endl;
            throw std::exception();
        }

        // Move the file cursor to the end to get the file size
        fileStream.seekg(0, std::ios::end);
        std::streampos fileSize = fileStream.tellg();
        fileStream.seekg(0, std::ios::beg);

        // Create a buffer to hold the file contents
        std::vector<char> buffer(static_cast<size_t>(fileSize));

        // Read the file contents into the buffer
        fileStream.read(buffer.data(), fileSize);

        // Check if the read operation was successful
        if (!fileStream) {
            std::cerr << "Error reading file contents." << std::endl;
            // You may choose to throw an exception or handle the error in another way.
            // For simplicity, we'll exit the program in case of an error.
            std::exit(EXIT_FAILURE);
        }

        return buffer;
}

std::vector<std::string> FileReader::readLinesFromFile() {
     if (!fs::exists(this->filePath)) {
            std::cerr << "Error: File not found - " << filePath << std::endl;
            throw std::exception();
        }

        std::vector<std::string> lines;
        std::string line;

        while (std::getline(fileStream, line)) {
            lines.push_back(line);
        }

        // Check if the read operation was successful
        if (!fileStream.eof() && !fileStream) {
            std::cerr << "Error reading file contents." << std::endl;
            std::exit(EXIT_FAILURE);
        }

        return lines;
}

std::vector<Line> FileReader::readWordsFromFile() {
    if (!fs::exists(this->filePath)) {
            std::cerr << "Error: File not found - " << filePath << std::endl;
            throw std::exception();
        }

        std::vector<Line> lines;
        
        std::string line;
        while (std::getline(fileStream, line)) {
            lines.push_back(Line(line));
        }

        // Check if the read operation was successful
        if (!fileStream.eof()) {
            std::cerr << "Error reading file contents." << std::endl;
            std::exit(EXIT_FAILURE);
        }
        
        return lines;
}

void FileReader::close() {
     if (!fs::exists(this->filePath)) {
            std::cerr << "Error: File not found - " << filePath << std::endl;
            throw std::exception();
        }

        if (fileStream.is_open()) {
            fileStream.close();
        }
}

FileReader::~FileReader() {
    close();
}

const std::vector<Line>* FileReader::getFileLines() const {
    return this->fileLines.get();
}

const std::string& FileReader::getFileContentAsString() const {
    return this->fileContentAsString;
}