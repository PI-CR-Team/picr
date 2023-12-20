#pragma once

#include <string>
#include <vector>

#include <picr/line.hpp>
#include <picr/file_reader.hpp>
#include <picr/file_writer.hpp>
#include <picr/lock_file.hpp>

#include <SFML/System.hpp>

class PiCrEditor {
private:
    std::vector<Line> fileBuffer;
    std::string filePath;
    
    std::shared_ptr<sf::Thread> editorThread;

public:

    PiCrEditor(const std::string& filePath);

    void openFile();
    void saveFile();

    void deleteLine(int lineNumber);
    void deleteLines(int startLineNumber, int endLineNumber);

    void insertLine(int lineNumber, const std::string& lineContent);
    void insertLines(int lineNumber, const std::vector<std::string>& linesContent);

    void appendLine(const std::string& lineContent);
    void appendLines(const std::vector<std::string>& linesContent);

    // Getters and setters
    const std::vector<Line>& getFileBuffer() const;
    void setFileBuffer(const std::vector<Line>& fileBuffer);
    void setFileBuffer(const std::vector<std::string>& fileBuffer);
    void setFileBuffer(const std::vector<char>& fileBuffer);
    void setFileBuffer(const std::string& fileBuffer);


    const std::string& getFilePath() const;
    void setFilePath(const std::string& filePath);

    // Editor thread
    const std::shared_ptr<sf::Thread>& getEditorThread() const;
    void setEditorThread(const std::shared_ptr<sf::Thread>& editorThread);

    // Editor thread, we need to continuously read the keyboard status inside this thread. It will aslo modify the state of the renderer
    void readKeyboardStatus();
    // Get most common commands
    void startEditorMainThread();
    void joinEditorMainThread();
};
