ifeq ($(PLATFORM),)
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S), Linux)
		PLATFORM = linux
	endif
	ifeq ($(UNAME_S), Darwin)
		PLATFORM = mac
	endif
	ifeq ($(UNAME_S), Windows_NT)
		PLATFORM = windows
	endif
	ifeq ($(findstring MINGW,$(UNAME_S)),MINGW)
		PLATFORM = windows
	endif
endif

CC       := gcc
SRC      := $(wildcard ./src/*.c)
TARGET   := NAME
CFLAGS   := -Wall -Wextra -Wno-unused-function -O3

ifeq ($(PLATFORM), linux)
    INCLUDE := -I./thirdparty/raylib-5.5_linux_amd64/include/
    LDFLAGS := ./thirdparty/raylib-5.5_linux_amd64/lib/libraylib.a \
               -lm -lpthread -ldl -lGL -lX11 -lXrandr -lXinerama -lXi -lXcursor
endif

ifeq ($(PLATFORM), mac)
	INCLUDE := -I./thirdparty/raylib-5.5_macos/include
	LDFLAGS := ./thirdparty/raylib-5.5_macos/lib/libraylib.a \
	           -lm -lpthread -ldl \
	           -framework CoreVideo -framework IOKit -framework Cocoa \
	           -framework GLUT -framework OpenGL
endif

ifeq ($(PLATFORM), windows)
	CC := x86_64-w64-mingw32-gcc

	INCLUDE := -I./thirdparty/raylib-5.5_win64_mingw-w64/include
	LDFLAGS := ./thirdparty/raylib-5.5_win64_mingw-w64/lib/libraylib.a \
	           -lopengl32 -lgdi32 -lwinmm -lkernel32 -luser32
	TARGET := NAME.exe
endif

all:
	$(CC) $(CFLAGS) $(INCLUDE) $(SRC) $(LDFLAGS) -o $(TARGET) && ./$(TARGET)

wr:
	$(CC) $(CFLAGS) $(INCLUDE) $(SRC) $(LDFLAGS) -o $(TARGET)

d:
	$(CC) $(CFLAGS) $(INCLUDE) $(SRC) -DDEBUG $(LDFLAGS) -o $(TARGET) && ./$(TARGET)

clean:
	rm -f $(TARGET)
