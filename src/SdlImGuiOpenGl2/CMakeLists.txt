make_executable()

target_include_directories(${PROJECT} PUBLIC
    ${OPENGL_INCLUDE_DIR}
    ${SDL2_INCLUDE_DIRS}
    ${IMGUI_INCLUDE_DIR}
    )
    
target_link_libraries(${PROJECT}
    ${OPENGL_LIBRARIES}
    ${SDL2_LIBRARIES}
    ${IMGUI_LIBRARIES}
    )
