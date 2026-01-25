# Unofficial Snap Packaging for whisper.cpp

![Placeholder icon of whisper.cpp](https://cdn.statically.io/gl/brlin/whisper.cpp-snap/main/snap/gui/placeholder-icon.png "Placeholder icon of whisper.cpp")

**This is the unofficial snap for whisper.cpp**, *"Port of OpenAI's Whisper model in C/C++"*. It works on Ubuntu, Fedora, Debian, and other major Linux distributions.

[![Status Badge of the `whisper-cpp` Snap](https://snapcraft.io/whisper-cpp/badge.svg)](https://snapcraft.io/whisper-cpp)

<!-- Uncomment and modify this when you have a screenshot
![Screenshot of the Snapped Application](local/screenshots/screenshot.png "Screenshot of the Snapped Application")
-->

Published for Linux with 💝 by Snapcrafters

## Installation

([Don't have snapd installed?](https://snapcraft.io/docs/core/install))

### In a Terminal

    # Install the snap #

    sudo snap install whisper-cpp

    # Connect the snap to optional security confinement interfaces #
    ## For accessing files in /mnt, /media, and /run/media directories ##
    sudo snap connect whisper-cpp:removable-media

    # Launch the application #
    whisper-cpp.cli

### The Graphical Way

[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-black.svg)](https://snapcraft.io/whisper-cpp)

## What is Working

* Downloading GGML models using the `whisper-cpp.download-ggml-model` command
* Downloading VAD models using the `whisper-cpp.download-vad-model` command
* CPU transcription (very slow)
* Vulkan-based GPU transcription (requires compatible GPU and drivers)

## What is NOT Working...yet

Check out the [issue tracker](https://gitlab.com/brlin/whisper.cpp-snap/-/issues) for known issues.

## Support

* Report issues regarding using this snap to the issue tracker:  
  <https://gitlab.com/brlin/whisper.cpp-snap/-/issues>
* You may also post on the Snapcraft Forum, under the `snap` topic category:  
  <https://forum.snapcraft.io/c/snap>
