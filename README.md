## Introduction

Minimal GUI example projects using ImGui & SDL2 make with CMake.

![ImGui Example Screenshot](images/sdlimgui.png)

* [imgui](https://github.com/ocornut/imgui) - Minimal GUI.
* [SDL2](https://www.libsdl.org/) - Multimedia layer library.

## Using ImGui in a CMake Project 

To use the ImGui in a CMake project one should copy the following files:

* `3rdparty/imgui` - directory with ImGui headers copied from the original repository. This is not a git module, so the files are not updated automatically.
* `cmake/imgui.cmake` - CMake module that defines variables `IMGUI_LIBRARIES` and `IMGUI_INCLUDE_DIR`.

## Environment Setup

### Debian-based Systems

The following instructions apply to:

* Ubuntu 18.04
* Ubuntu 16.04
* Debian 9

```
sudo apt-get install -y \
    build-essential \
    cmake \
    xorg-dev \
    libgl1-mesa-dev \
    libfreetype6-dev \
    libsdl2-dev
```

### RedHat-based Systems

The following instructions apply to:

* Fedora 22 and higher

```
sudo dnf install -y \
    gcc gcc-c++ make \
    cmake \
    mesa-libGL-devel \
    libXrandr-devel \
    libXinerama-devel \
    libXcursor-devel \
    libXi-devel \
    freetype-devel \
    SDL2-devel
```

### macOS systems

Install SDL2 libraries using brew:

```
brew install sdl2
```

## Building

Check out sources with `--recursive` parameter for 3rd-party libraries:

```
git clone --recursive https://github.com/Postrediori/SdlImGui.git
```

Prepare build with CMake and build executable

```
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make
```

## Running

Using `make install` will copy the executable to `bundle` directory:

```
cd build
make install
```

Run the binaries from `bundle` folder:

```
cd bundle

# SDL2 & OpenGL 2 demo project
./bundle/SdlImGuiOpenGl2

# SDL2 & OpenGL 3 demo project
./bundle/SdlImGuiOpenGl3

# SDL2 & SDL_Renderer demo project
./bundle/SdlRendererImGui
```
