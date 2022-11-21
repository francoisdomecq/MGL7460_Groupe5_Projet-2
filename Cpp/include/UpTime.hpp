#ifndef UP_TIME_H
#define UP_TIME_H

#include <string>
#include <iostream>
#include "TimeFromSeconds.hpp"

class UpTime {
  public:
    explicit UpTime(const std::string& fileName = "../data/uptime_file.txt");
    void execute(std::ostream& output = std::cout);

  private:
    std::string fileName;
    TimeFromSeconds upTime;
    TimeFromSeconds idleTime;
    std::string* readFromFile();
};

#endif
