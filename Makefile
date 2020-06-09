#OBJS specifies which files to compile as part of the project
OBJS = src/main.cpp

#CC specifies which compiler we're using
CC = clang++

#COMPILER_FLAGS specifies the additional compilation options we're using
# -w suppresses all warnings
COMPILER_FLAGS = -g -I/usr/local/include/SDL2 -D_THREAD_SAFE

#LINKER_FLAGS specifies the libraries we're linking against
LINKER_FLAGS = -L/usr/local/lib -lSDL2

#OBJ_NAME specifies the name of our exectuable
OBJ_NAME = hello_SDL

#This is the target that compiles our executable
all : $(OBJS)
	$(CC) $(OBJS) $(COMPILER_FLAGS) $(LINKER_FLAGS) -o bin/$(OBJ_NAME)