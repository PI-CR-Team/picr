#pragma once

#include <ftxui/dom/node.hpp>
#include <ftxui/screen/screen.hpp>
#include <ftxui/component/component.hpp>
#include <ftxui/component/screen_interactive.hpp>

#include <chrono>
#include <thread>

#include <SFML/System.hpp>

class TerminalRenderer {
private:
    // Renderer mutex
    sf::Mutex rendererMutex;

    ftxui::Element currentScreenElements;

    ftxui::ScreenInteractive currentScreenInteractive;
    ftxui::Component currentScreenComponentToRender;

    std::shared_ptr<sf::Thread> threadInstanceForRenderer;

public:
    TerminalRenderer(ftxui::Element currentScreenElements); // Constructor for element rendering on screen
    TerminalRenderer(ftxui::Component currentScreenComponent); // Constructor for component fullscreen rendering

    void startTerminalRendererThreadForElements();
    void startTerminalRendererThreadForComponents();
    void joinThreadInstanceForRenderer();   
    void startTerminalRendererThreadForComponentsHelperFunction();

    void setCurrentScreenComponentToRender(const ftxui::Component& component);
    void setCurrentScreenComponentToRender(ftxui::Component&& component);

    void setCurrentScreenElements(const ftxui::Element& element);
    void setCurrentScreenElements(ftxui::Element&& element);

    void setThreadInstanceForRenderer(const std::shared_ptr<sf::Thread>& threadInstanceForRenderer);
    

    ftxui::Element& getCurrentScreenElements();
    ftxui::Component& getCurrentScreenComponentToRender();
    std::shared_ptr<sf::Thread>& getThreadInstanceForRenderer();

    ftxui::ScreenInteractive& getCurrentScreenInteractive(); // The screen can be modified externally

    ~TerminalRenderer() = default;

};