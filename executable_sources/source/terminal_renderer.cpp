#include "picr/terminal_renderer.hpp"
#include <ftxui/dom/elements.hpp>
#include <ftxui/screen/color.hpp>

#include "ftxui/component/captured_mouse.hpp"  // for ftxui
#include "ftxui/component/component.hpp"  // for Input, Renderer, ResizableSplitLeft
#include "ftxui/component/component_base.hpp"  // for ComponentBase, Component
#include "ftxui/component/screen_interactive.hpp"  // for ScreenInteractive
#include "ftxui/dom/elements.hpp"  // for operator|, separator, text, Element, flex, vbox, border

using namespace ftxui;
using namespace std::chrono_literals;

TerminalRenderer::TerminalRenderer(ftxui::Element currentScreenElements) :
    currentScreenElements(currentScreenElements), currentScreen(ScreenInteractive::Fullscreen()) {

    // Add a border to the elements
    currentScreenElements |= border;

    const int min_width = 40;
    currentScreenElements |= size(HEIGHT, GREATER_THAN, min_width);
}

void TerminalRenderer::startTerminalRendererThreadForElements() {
    for (int i = 0;; ++i) {
        Render(currentScreen, currentScreenElements);
        currentScreen.Print();

        const auto sleep_time = 0.03s;
        std::this_thread::sleep_for(sleep_time);
    }
}