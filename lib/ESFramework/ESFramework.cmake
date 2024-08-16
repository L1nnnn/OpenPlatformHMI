
file(GLOB_RECURSE ESFrame_SRC source/*.cpp)
add_library(${PROJECT_NAME} SHARED ${ESFrame_SRC})

target_include_directories(
  ${PROJECT_NAME} PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
                               $<INSTALL_INTERFACE:include/${PROJECT_NAME}-${PROJECT_VERSION}>
)
