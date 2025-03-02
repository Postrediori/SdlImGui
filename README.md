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

* Ubuntu
* Debian

```
sudo apt-get install -y \
    build-essential \
    cmake \
    xorg-dev \
    libgl1-mesa-dev \
    libfreetype6-dev \
    libsdl2-dev
```

**Note**. SDL3 is not yet available as a package for Debian and Ubuntu based systems. On this systems one must install SDL3 from sources.

### RedHat-based Systems

The following instructions apply to:

* Fedora

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
    SDL2-devel \
    SDL3-devel
```

### macOS systems

Install SDL2 & SDL3 libraries using brew:

```
brew install sdl2 sdl3
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

## TODO
* [X] SDL3 demo project
* [ ] Update SDL3 installaiton instructions for Debian and Ubuntu when the packages will be released.
