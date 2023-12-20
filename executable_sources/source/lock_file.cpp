#include "picr/lock_file.hpp"

#include <filesystem>
#include <fstream>
#include <iostream>
#include <vector>

namespace fs = std::filesystem;

sf::Mutex LockFile::lockFileMutex;

void LockFile::lockFile(const std::filesystem::path& fileToLockFilePath) 
{
    std::string lockFilePath = fileToLockFilePath.string() + ".lock";
    std::cout<<"Locking file: "<<fileToLockFilePath << "\nGenerated file " + lockFilePath <<std::endl;
    std::ofstream fileStream(lockFilePath);
    fileStream.close();
}

void LockFile::unlockFile(const std::filesystem::path& fileToLockFilePath) {
    
    std::string lockFilePath = fileToLockFilePath.string() + ".lock";
    std::cout<<"Unlocking file: "<<fileToLockFilePath << "\n" << "Removing lockFile from " + lockFilePath <<std::endl;
    fs::remove(lockFilePath);
}

bool LockFile::isLocked(const std::filesystem::path& fileToLockFilePath) {
    std::string lockFilePath = fileToLockFilePath.string() + ".lock";
    return fs::exists(lockFilePath);
}

bool LockFile::writeBufferToLockFile(const std::filesystem::path& fileToLockFilePath, const std::vector<char>& buffer) {
    LockFile::lockFileMutex.lock();
    std::string lockFilePath = fileToLockFilePath.string() + ".lock";
    std::ofstream fileStream(lockFilePath);

    for (const auto& line : buffer) {
        fileStream << line << std::endl;
    }

    fileStream.close();
    LockFile::lockFileMutex.unlock();
}

LockFile::~LockFile() = default;