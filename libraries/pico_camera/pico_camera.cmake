add_library(pico_camera INTERFACE)

target_sources(pico_camera INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/pico_camera.cpp
)

target_include_directories(pico_camera INTERFACE ${CMAKE_CURRENT_LIST_DIR})
add_definitions(-DSDCARD_PIN_SPI0_CS=26 -DSDCARD_PIN_SPI0_MISO=20)
# Pull in pico libraries that we need
target_link_libraries(pico_camera INTERFACE pico_stdlib pimoroni_i2c ov2640 aps6404 fatfs sdcard)