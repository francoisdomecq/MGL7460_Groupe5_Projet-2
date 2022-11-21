#include <iomanip>
#include <fstream>
#include <ctime>
#include "../include/UpTime.hpp"

UpTime::UpTime(const std::string& fileName /*= "../data/uptime_file.txt"*/) {
    this->fileName = fileName;
    std::string* values_from_file = this->readFromFile();
    this->upTime = TimeFromSeconds(stoi(values_from_file[0]));
    this->idleTime = TimeFromSeconds(stoi(values_from_file[1]));
}

void UpTime::execute(std::ostream& output /*= std::cout*/) {
    std::time_t time = std::time(0);
    output << std::put_time(std::localtime(&time), "%H:%M:%S") << " up " << this->upTime.toCout() << std::endl;
    output << std::put_time(std::localtime(&time), "%H:%M:%S") << " idle " << this->idleTime.toCout();
}

std::string* UpTime::readFromFile() {
    std::string fileContent;
    std::ifstream readFile(this->fileName);
    getline(readFile, fileContent);
    readFile.close();
    static std::string toReturn[2] = {fileContent.substr(0, fileContent.find(" ")), 
                                        fileContent.substr(fileContent.find(" "))};
    return toReturn;
}
