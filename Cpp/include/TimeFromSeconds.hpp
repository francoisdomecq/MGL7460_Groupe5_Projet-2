#ifndef TIME_FROM_SECONDS_H
#define TIME_FROM_SECONDS_H

#include <string>

class TimeFromSeconds {
  public:
    TimeFromSeconds() = default;
    explicit TimeFromSeconds(int seconds);
    std::string toCout();

  private:
    static const int DAY;
    static const int HOUR;
    static const int MINUTE;
    int seconds{0};
    int days{0};
    int hours{0};
    int minutes{0};
    int fromSecondsToDays();
    int fromSecondsToHours();
    int fromSecondsToMinutes();
};

#endif
