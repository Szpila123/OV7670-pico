cmake_minimum_required(VERSION 3.12)

include(pico_sdk_import.cmake)
project(OV_camera)
pico_sdk_init()

add_executable(OV_camera main.c)

pico_add_extra_outputs(OV_camera)

target_link_libraries(OV_camera pico_stdlib)
