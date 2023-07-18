cmake_minimum_required(VERSION 3.27.0-rc5)
project(urna)

add_library(
    ${PROJECT_NAME}
    SHARED
        urna.cpp
        urna.def
)

# add_executable(
#     ${PROJECT_NAME}
#     urna.cpp
# )

target_link_libraries(
    ${PROJECT_NAME}
    Winmm.lib
)