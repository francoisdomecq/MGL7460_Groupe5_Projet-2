if(EXISTS "C:/Users/maxim/Documents/UQAM_Cours/MGL7460_Maintenance/Projet2/Cpp/build/UpTimeTests[1]_tests.cmake")
  include("C:/Users/maxim/Documents/UQAM_Cours/MGL7460_Maintenance/Projet2/Cpp/build/UpTimeTests[1]_tests.cmake")
else()
  add_test(UpTimeTests_NOT_BUILT UpTimeTests_NOT_BUILT)
endif()
