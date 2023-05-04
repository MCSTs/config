#1.cmake verson，指定cmake版本
cmake_minimum_required(VERSION 3.1.0)


# windows下使用mingw环境编译
# cmake -G "MinGW Makefiles"
set(CMAKE_GENERATOR "MinGW Makefiles")  
# set(CMAKE_CXX_COMPILER "D:/programs/mingw64/bin/g++.exe")
# set(CMAKE_C_COMPILER "D:/programs/mingw64/bin/gcc.exe")


#2.project name，指定项目的名称，一般和项目的文件夹名称对应
project(MAIN)

#3.head file path，头文件目录
include_directories(
  ./CORE/
  ./FWLIB/inc/
  ./USER/inc/
  ./USER/src/
)

#4.source directory，源文件目录
aux_source_directory(./CORE/ CORE_SRCS)
aux_source_directory(./FWLIB/src/ FWLIB_SRCS)
aux_source_directory(./USER/src/ USER_SRCS)

#5.set environment variable，设置环境变量，编译用到的源文件全部都要放到这里，否则编译能够通过，但是执行的时候会出现各种问题，比如"symbol lookup error xxxxx , undefined symbol"
set(TOTAL
  ${CORE_SRCS}
  ${FWLIB_SRCS}
  ${USER_SRCS}
)

# 设置生成compile_commands.json文件
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# 添加项目的宏定义
add_compile_definitions(__CC_ARM STM32F10X_MD USE_STDPERIPH_DRIVER)
# add_compile_definitions(STM32F40_41xxx USE_STDPERIPH_DRIVER)
# add_compile_definitions(__CC_ARM STM32F103xE USE_HAL_DRIVER)


#6.add executable file，添加要编译的可执行文件
add_executable(${PROJECT_NAME} ${TOTAL})

#7.add link library，添加可执行文件所需要的库，比如我们用到了libm.so（命名规则：lib+name+.so），就添加该库的名称
# TARGET_LINK_LIBRARIES(${PROJECT_NAME} m)


# Other
# 添加 math 子目录
# add_subdirectory(math)

# 生成链接库
# add_library (MathFunctions ${DIR_LIB_SRCS})
