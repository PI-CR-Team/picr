#include "picr/line.hpp"
#include "picr/editor.hpp"

#include "picr/file_reader.hpp"
#include "picr/file_writer.hpp"

#include <SFML/System.hpp>
#include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>

PiCrEditor::PiCrEditor(const std::string& filePath) : filePath(filePath) {}

void PiCrEditor::openFile() {
    FileReader fileReader(filePath);
    fileBuffer = fileReader.readWordsFromFile();
    fileReader.close();
}

void PiCrEditor::saveFile() {
    FileWriter fileWriter(filePath);
    fileWriter.appendLines(fileBuffer);
    fileWriter.close();
}

void PiCrEditor::deleteLine(int lineNumber) {
    fileBuffer.erase(fileBuffer.begin() + lineNumber);
}

void PiCrEditor::deleteLines(int startLineNumber, int endLineNumber) {
    fileBuffer.erase(fileBuffer.begin() + startLineNumber, fileBuffer.begin() + endLineNumber);
}

void PiCrEditor::insertLine(int lineNumber, const std::string& lineContent) {
    fileBuffer.insert(fileBuffer.begin() + lineNumber, Line(lineContent));
}

void PiCrEditor::insertLines(int lineNumber, const std::vector<std::string>& linesContent) {
    std::vector<Line> lines;
    for (const auto& line : linesContent) {
        lines.push_back(Line(line));
    }
    fileBuffer.insert(fileBuffer.begin() + lineNumber, lines.begin(), lines.end());
}

void PiCrEditor::appendLine(const std::string& lineContent) {
    fileBuffer.push_back(Line(lineContent));
}

void PiCrEditor::appendLines(const std::vector<std::string>& linesContent) {
    std::vector<Line> lines;
    for (const auto& line : linesContent) {
        lines.push_back(Line(line));
    }
    fileBuffer.insert(fileBuffer.end(), lines.begin(), lines.end());
}

// Getters and setters

const std::vector<Line>& PiCrEditor::getFileBuffer() const {
    return fileBuffer;
}

void PiCrEditor::setFileBuffer(const std::vector<Line>& fileBuffer) {
    PiCrEditor::fileBuffer = fileBuffer;
}

void PiCrEditor::setFileBuffer(const std::vector<std::string>& fileBuffer) {
    std::vector<Line> lines;
    for (const auto& line : fileBuffer) {
        lines.push_back(Line(line));
    }
    PiCrEditor::fileBuffer = lines;
}

void PiCrEditor::setFileBuffer(const std::vector<char>& fileBuffer) {
    std::vector<Line> lines;

    // The vector contains the whole file, as char. We need to split it into lines
    std::string line;
    for (const auto& character : fileBuffer) {
        if (character == '\n') {
            lines.push_back(Line(line));
            line = "";
        } else {
            line += character;
        }
    }
    
    PiCrEditor::fileBuffer = lines;
}

// Also for string
void PiCrEditor::setFileBuffer(const std::string& fileBuffer) {
    std::vector<Line> lines;

    // The string contains the whole file, as char. We need to split it into lines
    std::string line;
    for (const auto& character : fileBuffer) {
        if (character == '\n') {
            lines.push_back(Line(line));
            line = "";
        } else {
            line += character;
        }
    }


    PiCrEditor::fileBuffer = lines;
}


const std::string& PiCrEditor::getFilePath() const {
    return filePath;
}

void PiCrEditor::setFilePath(const std::string& filePath) {
    PiCrEditor::filePath = filePath;
}

void PiCrEditor::setEditorMode(short editorMode) {
    PiCrEditor::currentEditorMode = editorMode;
}

const char* PiCrEditor::getEditorMode() const {
    switch (currentEditorMode) {
        case EDITOR_STATE_VISUAL:
            return "VISUAL";
        case EDITOR_STATE_INSERT:
            return "INSERT";
        case EDITOR_STATE_COMMAND:
            return "COMMAND";
        case EDITOR_STATE_SEARCH:
            return "SEARCH";
        case EDITOR_STATE_QUIT:
            return "QUIT";
        default:
            return "UNKNOWN";
    }
}

short PiCrEditor::getEditorModeAsShort() const {
    return currentEditorMode;
}


// const std::shared_ptr<sf::Thread>& PiCrEditor::getEditorThread() const {
//     return editorThread;
// }

// void PiCrEditor::setEditorThread(const std::shared_ptr<sf::Thread>& editorThread) {
//     PiCrEditor::editorThread = editorThread;
// }

// void PiCrEditor::startEditorMainThread() {
//     editorThread = std::make_shared<sf::Thread>(&PiCrEditor::readEventFromInputBox, this);
//     editorThread->launch();
// }

// void PiCrEditor::joinEditorMainThread() {
//     editorThread->wait();
// }




void PiCrEditor::readEventFromInputBox(const ftxui::Event& event, ftxui::Component* component) {
    // Check if ":" was pressed
    // If it was pressed, then we need to check if the next character is "w" or "q"
}

