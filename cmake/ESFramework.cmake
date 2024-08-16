set(PROJECT_NAMESPACE "NUX")

file(GLOB_RECURSE ESFramework_SRC_DIR SOURCE/*.cpp)
add_library(ESFramework SHARED ${ESFramework_SRC})
# the alias ${PROJECT_NAMESPACE}::${PROJECT_NAME} is automatically provided by PackageProject.cmake
# if we use the `NAMESPACE` parameter

target_include_directories(
  ESFramework PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
                               $<INSTALL_INTERFACE:include/${PROJECT_NAME}-${PROJECT_VERSION}>
)

add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/../.. PackageProject)

packageProject(
  NAME ${PROJECT_NAME}
  VERSION ${PROJECT_VERSION}
  NAMESPACE ${PROJECT_NAMESPACE}
  BINARY_DIR ${PROJECT_BINARY_DIR}
  INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include
  INCLUDE_DESTINATION include/${PROJECT_NAME}-${PROJECT_VERSION}
  VERSION_HEADER "ESFramework/version.h"
  INCLUDE_HEADER_PATTERN "*.h"
  DEPENDENCIES ""
  CPACK "${TEST_CPACK}"
)