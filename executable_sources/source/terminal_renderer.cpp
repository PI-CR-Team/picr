#include "picr/terminal_renderer.hpp"
#include <ftxui/dom/elements.hpp>
#include <ftxui/screen/color.hpp>

#include "ftxui/component/captured_mouse.hpp"  // for ftxui
#include "ftxui/component/component.hpp"  // for Input, Renderer, ResizableSplitLeft
#include "ftxui/component/component_base.hpp"  // for ComponentBase, Component
#include "ftxui/component/screen_interactive.hpp"  // for ScreenInteractive
#include "ftxui/dom/elements.hpp"  // for operator|, separator, text, Element, flex, vbox, border

#include <chrono>  // for operator""s, chrono_literals
#include <SFML/System.hpp>

using namespace ftxui;
using namespace std::chrono_literals;

TerminalRenderer::TerminalRenderer(ftxui::Element currentScreenElements) :
    currentScreenElements(currentScreenElements), currentScreenInteractive(ScreenInteractive::Fullscreen()) {

    // Add a border to the elements
    currentScreenElements |= border;

    const int min_width = 40;
    currentScreenElements |= size(HEIGHT, GREATER_THAN, min_width);
}

TerminalRenderer::TerminalRenderer(ftxui::Component currentScreenComponent) : 
    currentScreenComponentToRender(currentScreenComponent), currentScreenInteractive(ScreenInteractive::Fullscreen()) {
        currentScreenComponentToRender |= border;
};

void TerminalRenderer::startTerminalRendererThreadForElements() {
    for (int i = 0;; ++i) {
        Render(currentScreenInteractive, currentScreenElements);
        currentScreenInteractive.Print();

        const auto sleep_time = 0.03s;
        std::this_thread::sleep_for(sleep_time);
    }
}

void TerminalRenderer::startTerminalRendererThreadForComponentsHelperFunction() {
    this->currentScreenInteractive.Loop(this->currentScreenComponentToRender);
}

void TerminalRenderer::joinThreadInstanceForRenderer() {
    this->threadInstanceForRenderer->wait(); // This will wait for the thread to finish, in our case it will not finish
}

void TerminalRenderer::startTerminalRendererThreadForComponents() {
    // Start an sf::Thread to render the component
    this->threadInstanceForRenderer = std::make_shared<sf::Thread>(
        [this] {  
            this->startTerminalRendererThreadForComponentsHelperFunction();
        });
    this->threadInstanceForRenderer->launch();
}

void TerminalRenderer::setCurrentScreenComponentToRender(const ftxui::Component& component) {
    this->rendererMutex.lock();
    this->currentScreenComponentToRender = component;
    this->rendererMutex.unlock();
}

void TerminalRenderer::setCurrentScreenComponentToRender(ftxui::Component&& component) {
    this->rendererMutex.lock();
    this->currentScreenComponentToRender = component;
    this->rendererMutex.unlock();
}

void TerminalRenderer::setCurrentScreenElements(const ftxui::Element& element) {
    this->rendererMutex.lock();
    this->currentScreenElements = element;
    this->rendererMutex.unlock();
}

void TerminalRenderer::setCurrentScreenElements(ftxui::Element&& element) {
    this->currentScreenElements = element;
}


ftxui::Element& TerminalRenderer::getCurrentScreenElements() {
    return this->currentScreenElements;
}

ftxui::Component& TerminalRenderer::getCurrentScreenComponentToRender() {
    return this->currentScreenComponentToRender;
}

std::shared_ptr<sf::Thread>& TerminalRenderer::getThreadInstanceForRenderer() {
    return this->threadInstanceForRenderer;
}



ftxui::ScreenInteractive& TerminalRenderer::getCurrentScreenInteractive() {
    return this->currentScreenInteractive;
}