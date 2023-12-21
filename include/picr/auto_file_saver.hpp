#pragma once

#include <iostream>
#include <fstream>
#include <string>
#include <chrono>
#include <thread>
#include <memory>
#include <SFML/System.hpp>
#include <mutex>

class AutoFileSaver {
public:
    static const int SAVE_INTERVAL_SECONDS;
    static const int SLEEP_INTERVAL_MILLISECONDS;
    static const int THREAD_WAIT_TIMEOUT_MICROSECONDS;

    AutoFileSaver(const std::string& filename, std::string& buffer);

    ~AutoFileSaver();

    void start();

    void stop();

    void setBuffer(std::string newBuffer);

private:
    static void saveThreadStatic(void* userData);
    static void checkThreadStatic(void* userData);  

    void saveThread();
    void checkThread();

    void saveToFile();

    std::string filename;

    std::string& buffer;
    std::string lastBuffer;
    
    bool running;
    bool isChanged;
    std::shared_ptr<sf::Thread> saveThreadHandle;
    std::shared_ptr<sf::Thread> checkThreadHandle;
    // Start a timer
    sf::Clock clock;
    
    std::mutex mutex;  // Added mutex for thread safety
};