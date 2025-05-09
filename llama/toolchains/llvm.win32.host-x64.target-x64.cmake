set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR x86_64)

set(target x86_64-pc-windows-msvc)
set(CMAKE_C_COMPILER_TARGET ${target})
set(CMAKE_CXX_COMPILER_TARGET ${target})

include("${CMAKE_CURRENT_LIST_DIR}/../cmake/win32.programFilesPaths.cmake")
setProgramFilesPaths("x64")

include("${CMAKE_CURRENT_LIST_DIR}/../cmake/win32.llvmUseGnuModeCompilers.cmake")
llvmUseGnuModeCompilers("x64")

include("${CMAKE_CURRENT_LIST_DIR}/../cmake/win32.ensureNinjaPath.cmake")
ensureNinjaPath()

set(arch_c_flags "-march=native")

set(CMAKE_C_FLAGS_INIT "${arch_c_flags}")
set(CMAKE_CXX_FLAGS_INIT "${arch_c_flags}")
