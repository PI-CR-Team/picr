#pragma once

#include <ncurses.h>
#include <chrono> 

#include "ftxui/dom/node.hpp"  
#include "ftxui/screen/color.hpp"  // for Color, Color::BlueLight, Color::RedLight, Color::YellowLight, ftxui
#include <ftxui/dom/elements.hpp>  // for graph, operator|, separator, color, Element, vbox, flex, inverted, operator|=, Fit, hbox, size, border, GREATER_THAN, HEIGHT
#include <ftxui/screen/screen.hpp>  // for Full, Screen


using namespace ftxui;
using namespace std::chrono_literals;

class TerminalRenderer {
    private:
    ftxui::Element currentScreenElements;
    ftxui::Screen currentScreen;

    public:
    TerminalRenderer (ftxui::Element currentScreenElements) :
            currentScreenElements(currentScreenElements), currentScreen(ScreenInteractive::Fullscreen()) {

        // Add a border to the elements
        currentScreenElements |= ftxui::border;

        const int min_width = 40;
        currentScreenElements |= size(HEIGHT, GREATER_THAN, min_width);

    }

    void startTerminalRendererThreadForElements() {
        for (int i = 0;; ++i) {
            Render(this->currentScreen, this->currentScreenElements);
            this->currentScreen.Print();

            const auto sleep_time = 0.03s;
            std::this_thread::sleep_for(sleep_time);
        }

    }

};