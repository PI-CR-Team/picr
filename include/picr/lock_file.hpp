#pragma once

#include <filesystem>
#include <SFML/System.hpp>

// This class will be used to lock files, in the same directory as the file create a file with the same name and .lock extension
class LockFile {
private:
    static sf::Mutex lockFileMutex;
public:

    LockFile() = default;

    static void lockFile(const std::filesystem::path& fileToLockFilePath);

    static void unlockFile(const std::filesystem::path& fileToLockFilePath);

    static bool isLocked(const std::filesystem::path& fileToLockFilePath);

    static bool writeBufferToLockFile(const std::filesystem::path& fileToLockFilePath, const std::vector<char>& buffer);

    ~LockFile();
};