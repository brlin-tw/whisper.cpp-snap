# Unofficial snap packaging for whisper.cpp

Provides easy access to [the whisper.cpp application](https://github.com/ggerganov/whisper.cpp) on snap-enabled OS distributions.

<https://gitlab.com/brlin/whisper.cpp-snap>  
[![The GitLab CI pipeline status badge of the project's `main` branch](https://gitlab.com/brlin/whisper.cpp-snap/badges/main/pipeline.svg?ignore_skipped=true "Click here to check out the comprehensive status of the GitLab CI pipelines")](https://gitlab.com/brlin/whisper.cpp-snap/-/pipelines) [![GitHub Actions workflow status badge](https://github.com/brlin-tw/whisper.cpp-snap/actions/workflows/check-potential-problems.yml/badge.svg "GitHub Actions workflow status")](https://github.com/brlin-tw/whisper.cpp-snap/actions/workflows/check-potential-problems.yml) [![pre-commit enabled badge](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white "This project uses pre-commit to check potential problems")](https://pre-commit.com/) [![REUSE Specification compliance badge](https://api.reuse.software/badge/gitlab.com/brlin/whisper.cpp-snap "This project complies to the REUSE specification to decrease software licensing costs")](https://api.reuse.software/info/gitlab.com/brlin/whisper.cpp-snap)

## References

This section documents the materials referenced during the development of this project:

* [ggerganov/whisper.cpp: Port of OpenAI's Whisper model in C/C++](https://github.com/ggerganov/whisper.cpp)  
  The upstream project.
* [MIT License - Wikipedia](https://en.wikipedia.org/wiki/MIT_License)  
  Explains the versioning characteristic of the MIT license.
* [Install ffmpeg-2204 on Linux | Snap Store](https://snapcraft.io/ffmpeg-2204)  
  Explains the supported architectures of the ffmpeg-2204 platform snap.
* [Package Repository Properties - Craft Archives documentation](https://canonical-craft-archives.readthedocs-hosted.com/en/latest/reference/repo_properties/)  
  Explains how to specify a PPA repository in Snapcraft.
* [iar - How to specify a compiler in CMake? - Stack Overflow](https://stackoverflow.com/questions/45933732/how-to-specify-a-compiler-in-cmake)  
  Explains how to specify the C and C++ compilers in CMake.
* [Consuming the interface | The graphics-core22 Snap interface](https://canonical.com/mir/docs/the-graphics-core22-snap-interface#heading--consuming-the-interface--using-the-helpers)  
  Explains how to use the mesa-core22 platform snap.
* [Consuming the interface | The gpu-2404 Snap interface](https://canonical.com/mir/docs/the-gpu-2404-snap-interface#heading--consuming-the-interface)  
  Explains how to use the mesa-2404 platform snap.
* [Change from core22 to core24 - Snapcraft 8.13.2 documentation](https://documentation.ubuntu.com/snapcraft/stable/how-to/change-bases/change-from-core22-to-core24/)  
  Explains how to migrate a snap from the core22 base to the core24 base.
* [snapcrafters/ffmpeg-2404-sdk: Content snap for ffmpeg](https://github.com/snapcrafters/ffmpeg-2404-sdk?tab=readme-ov-file#uses)  
  Explains how to integrate the FFmpeg Library Content Snap.
* [L43-L48 · snapd/cmd/snap-confine/mount-support-nvidia.c at 029d5da · canonical/snapd](https://github.com/canonical/snapd/blob/029d5dafb69a4e67ffe57344eefbef8d231403af/cmd/snap-confine/mount-support-nvidia.c#L43-L48)  
  Explains the mount path of the NVIDIA Vulkan ICD files inside a snap.
* [Table of Debug Environment Variables | Architecture of the Vulkan Loader Interfaces](https://vulkan.lunarg.com/doc/view/latest/mac/LoaderInterfaceArchitecture.html#table-of-debug-environment-variables)  
  Explains the environment variable to set additional ICD paths to Vulkan.
* [Vulkan-Loader/loader/loader.c at 8198beb · KhronosGroup/Vulkan-Loader](https://github.com/KhronosGroup/Vulkan-Loader/blob/8198bebc7fe31c3da54b1dfacbb92e8697646701/loader/loader.c)  
  Explains the algorithm of loading ICD files in Vulkan.
* [CMAKE_BUILD_PARALLEL_LEVEL — CMake Documentation](https://cmake.org/cmake/help/latest/envvar/CMAKE_BUILD_PARALLEL_LEVEL.html)  
  Explains the environment variable to set the build parallel level in CMake.
* [Architectures - Snapcraft documentation](https://documentation.ubuntu.com/snapcraft/stable/reference/architectures/)  
  Explains how to specify supported architectures on core24 base.
* [Advanced grammar - Snapcraft documentation](https://documentation.ubuntu.com/snapcraft/stable/reference/advanced-grammar/)  
  Explains how to specify architecture-specific configurations.

## Licensing

Unless otherwise noted(individual file's header/[REUSE DEP5](.reuse/dep5)), this product is licensed under [the MIT license](https://www.opensource.org/licenses/MIT), or any of its recent versions you would prefer.

This work complies to [the REUSE Specification](https://reuse.software/spec/), refer the [REUSE - Make licensing easy for everyone](https://reuse.software/) website for info regarding the licensing of this product.
