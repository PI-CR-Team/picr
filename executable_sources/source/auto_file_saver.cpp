#include "picr/auto_file_saver.hpp"

const int AutoFileSaver::SAVE_INTERVAL_SECONDS = 10;
const int AutoFileSaver::SLEEP_INTERVAL_MILLISECONDS = 100;
const int AutoFileSaver::THREAD_WAIT_TIMEOUT_MICROSECONDS = 5000;

AutoFileSaver::AutoFileSaver(const std::string& filename, std::string& buffer)
    : filename(filename), buffer(buffer), lastBuffer(buffer), running(false), isChanged(false) {}

AutoFileSaver::~AutoFileSaver() {
    stop();
}

void AutoFileSaver::start() {
    if (!running) {
        running = true;
        checkThreadHandle = std::make_shared<sf::Thread>(&AutoFileSaver::checkThreadStatic, this);
        saveThreadHandle = std::make_shared<sf::Thread>(&AutoFileSaver::saveThreadStatic, this);
        checkThreadHandle->launch();
        saveThreadHandle->launch();
    }
}

void AutoFileSaver::stop() {
    running = false;
    if (saveThreadHandle) {
        saveThreadHandle->terminate();
    }
}

void AutoFileSaver::setBuffer(std::string newBuffer) {
    std::lock_guard<std::mutex> lock(mutex);
    if (buffer != newBuffer) {
        buffer = std::move(newBuffer);
        isChanged = true;
    }
}

void AutoFileSaver::saveThreadStatic(void* userData) {
    AutoFileSaver* self = static_cast<AutoFileSaver*>(userData);
    if (self) {
        self->saveThread();
    }
}

void AutoFileSaver::checkThreadStatic(void* userData) {
    AutoFileSaver* self = static_cast<AutoFileSaver*>(userData);
    if (self) {
        self->checkThread();
    }
}


void AutoFileSaver::saveThread() {
    while (running) {
        std::this_thread::sleep_for(std::chrono::seconds(SAVE_INTERVAL_SECONDS));
        {
            std::lock_guard<std::mutex> lock(mutex);
            if (isChanged && clock.getElapsedTime().asSeconds() > SAVE_INTERVAL_SECONDS) {
                saveToFile();
                lastBuffer = buffer;
                clock.restart();
                isChanged = false;
            }
        }
    }
}

void AutoFileSaver::checkThread() {
    clock.restart();

    while (running) {
        std::this_thread::sleep_for(std::chrono::milliseconds(SLEEP_INTERVAL_MILLISECONDS));
        {
            std::lock_guard<std::mutex> lock(mutex);
            if (lastBuffer != buffer) {
                lastBuffer = buffer;
                clock.restart();
                isChanged = true;
            }
        }
    }
}


void AutoFileSaver::saveToFile() {
    std::ofstream file(filename);
    if (file.is_open()) {
        file << buffer;
        file.close();
    } else {
        std::cerr << "Error: Unable to open file for saving: " << filename << std::endl;
    }
}