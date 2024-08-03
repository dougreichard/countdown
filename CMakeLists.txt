cmake_minimum_required(VERSION 3.21)
project(countdown LANGUAGES CXX VERSION 1.0)

# --------------------------------------------------------------------------------------------------------
# Create executable
# --------------------------------------------------------------------------------------------------------
add_subdirectory(deps)

MESSAGE("saucer embed ./deps/countdowntimer embedded")
execute_process(COMMAND cmd /c "saucer embed _deps/countdowntimer-src ../www"
    RESULT_VARIABLE CMD_ERROR
    OUTPUT_FILE CMD_OUTPUT
)
MESSAGE( STATUS "CMD_ERROR:" ${CMD_ERROR})
MESSAGE( STATUS "CMD_OUTPUT:" ${CMD_OUTPUT})

add_executable(${PROJECT_NAME} "main.cpp")

target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_20)
set_target_properties(${PROJECT_NAME} PROPERTIES CXX_STANDARD 20 CXX_EXTENSIONS OFF CXX_STANDARD_REQUIRED ON)
#target_include_directories(${PROJECT_NAME} INTERFACE "include")

# --------------------------------------------------------------------------------------------------------
# Link libraries
# --------------------------------------------------------------------------------------------------------


target_link_libraries(${PROJECT_NAME} PRIVATE saucer::saucer )