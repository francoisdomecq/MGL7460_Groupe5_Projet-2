#include <tuple>
#include <gtest/gtest.h>
#include "../include/TimeFromSeconds.hpp"

class TimeFromSecondsMultipleParametersTests :public ::testing::TestWithParam<std::tuple<int, std::string>> {
  protected:
    TimeFromSeconds testObject{std::get<0>(GetParam())};
};

TEST_P(TimeFromSecondsMultipleParametersTests, CheckTimeFromSecondsToCout) {
    std::string expectedOutput = std::get<1>(GetParam());
    ASSERT_EQ(expectedOutput, testObject.toCout());
}

INSTANTIATE_TEST_CASE_P(
    TimeFromSecondsTests,
    TimeFromSecondsMultipleParametersTests,
    ::testing::Values(
        std::make_tuple(500, "8 min"),
        std::make_tuple(40000, "11:06"),
        std::make_tuple(88000, "1 day, 26 min"),
        std::make_tuple(150000, "1 day, 17:40"),
        std::make_tuple(259990, "3 days, 13 min"),
        std::make_tuple(300000, "3 days, 11:20")
    )
);
