add_test([=[UptimeTests/UpTimeMultipleParametersTests.CheckUpTimeExecute/("../data/test_file1.txt", " up 59 min\n idle 1:24")]=]  C:/Users/maxim/Documents/UQAM_Cours/MGL7460_Maintenance/Projet2/Cpp/build/UpTimeTests.exe [==[--gtest_filter=UptimeTests/UpTimeMultipleParametersTests.CheckUpTimeExecute/0]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[UptimeTests/UpTimeMultipleParametersTests.CheckUpTimeExecute/("../data/test_file1.txt", " up 59 min\n idle 1:24")]=]  PROPERTIES WORKING_DIRECTORY C:/Users/maxim/Documents/UQAM_Cours/MGL7460_Maintenance/Projet2/Cpp/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test([=[UptimeTests/UpTimeMultipleParametersTests.CheckUpTimeExecute/("../data/test_file2.txt", " up 1 day, 8 min\n idle 1 day, 1:25")]=]  C:/Users/maxim/Documents/UQAM_Cours/MGL7460_Maintenance/Projet2/Cpp/build/UpTimeTests.exe [==[--gtest_filter=UptimeTests/UpTimeMultipleParametersTests.CheckUpTimeExecute/1]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[UptimeTests/UpTimeMultipleParametersTests.CheckUpTimeExecute/("../data/test_file2.txt", " up 1 day, 8 min\n idle 1 day, 1:25")]=]  PROPERTIES WORKING_DIRECTORY C:/Users/maxim/Documents/UQAM_Cours/MGL7460_Maintenance/Projet2/Cpp/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test([=[UptimeTests/UpTimeMultipleParametersTests.CheckUpTimeExecute/("../data/test_file3.txt", " up 2 days, 36 min\n idle 3 days, 11:24")]=]  C:/Users/maxim/Documents/UQAM_Cours/MGL7460_Maintenance/Projet2/Cpp/build/UpTimeTests.exe [==[--gtest_filter=UptimeTests/UpTimeMultipleParametersTests.CheckUpTimeExecute/2]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[UptimeTests/UpTimeMultipleParametersTests.CheckUpTimeExecute/("../data/test_file3.txt", " up 2 days, 36 min\n idle 3 days, 11:24")]=]  PROPERTIES WORKING_DIRECTORY C:/Users/maxim/Documents/UQAM_Cours/MGL7460_Maintenance/Projet2/Cpp/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set(  UpTimeTests_TESTS [==[UptimeTests/UpTimeMultipleParametersTests.CheckUpTimeExecute/("../data/test_file1.txt", " up 59 min\n idle 1:24")]==] [==[UptimeTests/UpTimeMultipleParametersTests.CheckUpTimeExecute/("../data/test_file2.txt", " up 1 day, 8 min\n idle 1 day, 1:25")]==] [==[UptimeTests/UpTimeMultipleParametersTests.CheckUpTimeExecute/("../data/test_file3.txt", " up 2 days, 36 min\n idle 3 days, 11:24")]==])