#include <sstream>
#include <ctime>
#include <tuple>
#include <gtest/gtest.h>
#include "../include/UpTime.hpp"

class UpTimeMultipleParametersTests :public ::testing::TestWithParam<std::tuple<std::string, std::string>> {
  protected:
    UpTime testObject{std::get<0>(GetParam())};
};

TEST_P(UpTimeMultipleParametersTests, CheckUpTimeExecute) {
    std::string expectedOutput = std::get<1>(GetParam());
    std::stringstream outputStream;
    testObject.execute(outputStream);
    std::string output = outputStream.str();
    output.erase(0, 8);                      // Erase first timestamp
    output.erase(output.find('\n') + 1, 8);  // Erase second timestamp
    ASSERT_EQ(expectedOutput, output);
}

INSTANTIATE_TEST_CASE_P(
    UptimeTests,
    UpTimeMultipleParametersTests,
    ::testing::Values(
        std::make_tuple(
            "../data/test_file1.txt",
            " up 59 min\n idle 1:24"
        ),
        std::make_tuple(
            "../data/test_file2.txt",
            " up 1 day, 8 min\n idle 1 day, 1:25"
        ),
        std::make_tuple(
            "../data/test_file3.txt",
            " up 2 days, 36 min\n idle 3 days, 11:24"
        )
    )
);
