set(IMGUI_INCLUDE_DIR ${CMAKE_SOURCE_DIR}/3rdparty/imgui)
file(GLOB IMGUI_SOURCES ${IMGUI_INCLUDE_DIR}/*.cpp)
file(GLOB IMGUI_HEADERS ${IMGUI_INCLUDE_DIR}/*.h)

set(IMGUI_BACKENDS_DIR ${IMGUI_INCLUDE_DIR}/backends)
set(IMGUI_BACKEND_SOURCES
    ${IMGUI_BACKENDS_DIR}/imgui_impl_opengl3.cpp
    ${IMGUI_BACKENDS_DIR}/imgui_impl_sdl3.cpp
    ${IMGUI_BACKENDS_DIR}/imgui_impl_sdlrenderer3.cpp
    ${IMGUI_BACKENDS_DIR}/imgui_impl_sdlgpu3.cpp)
set(IMGUI_BACKEND_HEADERS
    ${IMGUI_BACKENDS_DIR}/imgui_impl_opengl3.h
    ${IMGUI_BACKENDS_DIR}/imgui_impl_sdl3.h
    ${IMGUI_BACKENDS_DIR}/imgui_impl_sdlrenderer3.h
    ${IMGUI_BACKENDS_DIR}/imgui_impl_sdlgpu3.h
    ${IMGUI_BACKENDS_DIR}/imgui_impl_sdlgpu3_shaders.h)

add_library(imgui_sdl3 STATIC
    ${IMGUI_SOURCES} ${IMGUI_SOURCES}
    ${IMGUI_BACKEND_HEADERS} ${IMGUI_BACKEND_SOURCES})

target_compile_definitions(imgui_sdl3 PUBLIC IMGUI_IMPL_OPENGL_LOADER_GLAD)

target_include_directories(imgui_sdl3 PUBLIC
    ${IMGUI_INCLUDE_DIR}
    ${IMGUI_BACKENDS_DIR}
    ${OPENGL_INCLUDE_DIR}
    ${SDL3_INCLUDE_DIRS}
    ${GLAD_INCLUDE_DIR})

target_link_libraries(imgui_sdl3
    ${OPENGL_LIBRARIES}
    ${SDL3_LIBRARIES}
    ${GLAD_LIBRARIES})

set_target_properties(imgui_sdl3 PROPERTIES LINKER_LANGUAGE CXX)
set_target_properties(imgui_sdl3 PROPERTIES FOLDER 3rdparty)

set(IMGUI_SDL3_LIBRARIES imgui_sdl3)
