#pragma once

#include <picr/editor.hpp>

#include <ftxui/dom/node.hpp>
#include <ftxui/screen/screen.hpp>
#include <ftxui/component/component.hpp>
#include <ftxui/component/screen_interactive.hpp>

#include <chrono>
#include <thread>

#include <SFML/System.hpp>

class TerminalRenderer
{
private:
    // Renderer mutex
    sf::Mutex rendererMutex;
    ftxui::ScreenInteractive currentScreenInteractive;
    std::string currentOnScreenInputText;

    std::shared_ptr<ftxui::Element> currentScreenElements;
    std::shared_ptr<ftxui::Component> currentScreenComponentToRender;
    std::shared_ptr<ftxui::InputOption> inputStyle;

    // Related to input inside the editor
    std::shared_ptr<ftxui::Component> currentOnScreenInputComponent;
    std::shared_ptr<ftxui::Component> currentMainTextAreaComponent;

    std::shared_ptr<sf::Thread> threadInstanceForRenderer;

public:
    TerminalRenderer() : currentScreenInteractive(ftxui::ScreenInteractive::Fullscreen()) {}

    TerminalRenderer(const ftxui::Element &currentScreenElements);    // Constructor for element rendering on screen
    TerminalRenderer(const ftxui::Component &currentScreenComponent); // Constructor for component fullscreen rendering

    void startTerminalRendererThreadForElements();
    void startTerminalRendererThreadForComponents();
    void joinThreadInstanceForRenderer();
    void startTerminalRendererThreadForComponentsHelperFunction();
    void setTerminalRendererInputStyle(const ftxui::InputOption &inputStyle);

    void setCurrentScreenComponentToRender(const ftxui::Component &component);
    void setCurrentScreenComponentToRender(ftxui::Component &&component);

    void setCurrentScreenElements(const ftxui::Element &element);
    void setCurrentScreenElements(ftxui::Element &&element);

    void setInputStyle(const ftxui::InputOption &inputStyle);
    void setInputStyle(ftxui::InputOption &&inputStyle);

    void setCurrentOnScreenInputText(const std::string &currentOnScreenInputText);
    void setCurrentOnScreenInputText(std::string &&currentOnScreenInputText);

    void setCurrentOnScreenInputComponent(const ftxui::Component &currentOnScreenInputComponent);
    void setCurrentOnScreenInputComponent(ftxui::Component &&currentOnScreenInputComponent);

    // Main area Attributes
    void setCurrentMainTextAreaComponent(const ftxui::Component &currentMainTextAreaComponent);
    void setCurrentMainTextAreaComponent(ftxui::Component &&currentMainTextAreaComponent);
    void setMainAreaHandlerAttributes(std::function<bool(ftxui::Event)> on_event);
    void setMainAreaHandlerAttributesDefaultFunction(PiCrEditor &editor, FileReader &fileReader, FileWriter &fileWriter);

    void setThreadInstanceForRenderer(const std::shared_ptr<sf::Thread> &threadInstanceForRenderer);

    // Get current screen interactive
    ftxui::ScreenInteractive &getCurrentScreenInteractive();
    std::string &getCurrentOnScreenInputText();

    std::shared_ptr<ftxui::Element> &getCurrentScreenElements();
    std::shared_ptr<ftxui::Component> &getCurrentScreenComponentToRender();
    std::shared_ptr<sf::Thread> &getThreadInstanceForRenderer();
    std::shared_ptr<ftxui::InputOption> &getInputStyle();
    std::shared_ptr<ftxui::Component> &getCurrentOnScreenInputComponent();
    std::shared_ptr<ftxui::Component> &getCurrentMainTextAreaComponent();

    ~TerminalRenderer() = default;
};