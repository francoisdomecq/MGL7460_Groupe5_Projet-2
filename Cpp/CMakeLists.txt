cmake_minimum_required(VERSION 3.25.0)

set(CMAKE_CXX_COMPILER "C:/msys64/mingw64/bin/g++.exe")
set(CMAKE_CXX_STANDARD 14)

include(FetchContent)
FetchContent_Declare(
    googletest
    URL https://github.com/google/googletest/archive/03597a01ee50ed33e9dfd640b249b4be3799d395.zip
)

project(
    uptime 
    VERSION 1.0
    DESCRIPTION "Uptime linux command"
    LANGUAGES CXX
)

add_executable(
    ${PROJECT_NAME} 
    src/main.cpp
    src/UpTime.cpp
    src/TimeFromSeconds.cpp
)

enable_testing()

add_executable(
    TimeFromSecondsTests
    test/TimeFromSecondsTests.cpp
    src/TimeFromSeconds.cpp
)

target_link_libraries(
    TimeFromSecondsTests
    GTest::gtest_main
)

enable_testing()

add_executable(
    UpTimeTests
    test/UpTimeTests.cpp
    src/UpTime.cpp
    src/TimeFromSeconds.cpp
)

target_link_libraries(
    UpTimeTests
    GTest::gtest_main
)

target_include_directories(
    ${PROJECT_NAME} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include
)

include(GoogleTest)
gtest_discover_tests(TimeFromSecondsTests)
gtest_discover_tests(UpTimeTests)

set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)