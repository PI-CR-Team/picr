#pragma once

#include <string>
#include <vector>

#include <picr/line.hpp>
#include <picr/file_reader.hpp>
#include <picr/file_writer.hpp>
#include <picr/lock_file.hpp>

#include "ftxui/dom/node.hpp"
#include "ftxui/screen/color.hpp"                 // for Color, Color::BlueLight, Color::RedLight, Color::YellowLight, ftxui
#include "ftxui/component/captured_mouse.hpp"     // for ftxui
#include "ftxui/component/component.hpp"          // for Input, Renderer, ResizableSplitLeft
#include "ftxui/component/component_base.hpp"     // for ComponentBase, Component
#include "ftxui/component/screen_interactive.hpp" // for ScreenInteractive
#include "ftxui/dom/elements.hpp"                 // for operator|, separator, text, Element, flex, vbox, border

#include <SFML/System.hpp>

class PiCrEditor
{
private:
    std::vector<Line> fileBuffer;
    std::string filePath;
    // std::shared_ptr<sf::Thread> editorThread;
    short currentEditorMode = EDITOR_STATE_VISUAL;

public:
    enum EditorState
    {
        EDITOR_STATE_VISUAL,
        EDITOR_STATE_INSERT,
        EDITOR_STATE_COMMAND,
        EDITOR_STATE_SEARCH,
        EDITOR_STATE_QUIT,
    };

    PiCrEditor(const std::string &filePath);

    void openFile();
    void saveFile();

    void deleteLine(int lineNumber);
    void deleteLines(int startLineNumber, int endLineNumber);

    void insertLine(int lineNumber, const std::string &lineContent);
    void insertLines(int lineNumber, const std::vector<std::string> &linesContent);

    void appendLine(const std::string &lineContent);
    void appendLines(const std::vector<std::string> &linesContent);

    // Getters and setters
    const std::vector<Line> &getFileBuffer() const;
    void setFileBuffer(const std::vector<Line> &fileBuffer);
    void setFileBuffer(const std::vector<std::string> &fileBuffer);
    void setFileBuffer(const std::vector<char> &fileBuffer);
    void setFileBuffer(const std::string &fileBuffer);

    void setEditorMode(short editorState);
    const char *getEditorMode() const;
    short getEditorModeAsShort() const;

    const std::string &getFilePath() const;
    void setFilePath(const std::string &filePath);

    // // Editor thread
    // const std::shared_ptr<sf::Thread>& getEditorThread() const;
    // void setEditorThread(const std::shared_ptr<sf::Thread>& editorThread);

    // // Get most common commands
    // void startEditorMainThread();
    // void joinEditorMainThread();

    // Editor thread, we need to continuously read the keyboard status inside this thread. It will aslo modify the state of the renderer
    void readEventFromInputBox(const ftxui::Event &event, ftxui::Component *component);
};
