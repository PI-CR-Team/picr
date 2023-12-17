#pragma once

#include <ftxui/dom/node.hpp>
#include <ftxui/screen/screen.hpp>
#include <ftxui/component/component.hpp>
#include <ftxui/component/screen_interactive.hpp>

#include <chrono>
#include <thread>

class TerminalRenderer {
private:
    ftxui::Element currentScreenElements;

    ftxui::ScreenInteractive currentScreenInteractive;
    ftxui::Component currentScreenComponentToRender;

public:
    TerminalRenderer(ftxui::Element currentScreenElements); // Constructor for element rendering on screen
    TerminalRenderer(ftxui::Component currentScreenComponent); // Constructor for component fullscreen rendering

    void startTerminalRendererThreadForElements();
    void startTerminalRendererThreadForComponents();

    // Setter for component to render on the screen 
    void setCurrentScreenComponentToRender(const ftxui::Component& component) {
        this->currentScreenComponentToRender = component;
    }
};