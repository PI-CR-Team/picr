#pragma once

#include <ftxui/dom/node.hpp>
#include <ftxui/screen/screen.hpp>
#include <chrono>
#include <thread>

class TerminalRenderer {
private:
    ftxui::Element currentScreenElements;
    ftxui::Screen currentScreen;

public:
    TerminalRenderer(ftxui::Element currentScreenElements);

    void startTerminalRendererThreadForElements();
};