#include "../include/TimeFromSeconds.hpp"

TimeFromSeconds::TimeFromSeconds(int seconds) {
    this->seconds = seconds;
    this->days = this->fromSecondsToDays();
    this->hours = this->fromSecondsToHours();
    this->minutes = this->fromSecondsToMinutes();
}

std::string TimeFromSeconds::toCout() {
    std::string toReturn = "";
    if (this->days > 0) {
        toReturn.append(std::to_string(this->days) + " day");
        toReturn.append(this->days > 1 ? "s" : "");
        toReturn.append(this->hours > 0 || this->minutes > 0 ? ", " : "");
    }
    if (this->hours > 0) {
        toReturn.append(std::to_string(this->hours) + ":" + (this->minutes < 10 ? "0" : ""));
        toReturn.append(std::to_string(this->minutes));
    } else if (this->minutes > 0) {
        toReturn.append(std::to_string(this->minutes) + " min");
    }
    return toReturn;
}

const int TimeFromSeconds::DAY = 86400;
const int TimeFromSeconds::HOUR = 3600;
const int TimeFromSeconds::MINUTE = 60;

int TimeFromSeconds::fromSecondsToDays() {
    return this->seconds / TimeFromSeconds::DAY;
}

int TimeFromSeconds::fromSecondsToHours() {
    return (this->seconds % TimeFromSeconds::DAY) / TimeFromSeconds::HOUR;
}

int TimeFromSeconds::fromSecondsToMinutes() {
    return ((this->seconds % TimeFromSeconds::DAY) % TimeFromSeconds::HOUR) / TimeFromSeconds::MINUTE;
}
