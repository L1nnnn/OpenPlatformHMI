#FindESFramework.cmake
message(${CMAKE_CURRENT_LIST_DIR}/lib/ESFramework)
find_path(ESFramework_Include_Dir NAMES esglobal.h PATHS ${CMAKE_CURRENT_SOURCE_DIR}/lib/ESFramework/include)
find_library(ESFramework_Library NAMES ESFramework PATHS ${CMAKE_CURRENT_SOURCE_DIR}/lib/ESFramework)


if(ESFramework_Include_Dir AND ESFramework_Library)
    set(ESFramework_Found true)
else()
    set(ESFramework_Found false)
endif()


if(ESFramework_Found)
    message(STATUS "Found ESFramework: ${ESFramework_Library}")
else()
    message(FATAL_ERROR "ESFramework not Found")
endif()

