TARGET = Tetris.exe

SRCS = block.cpp blocks.cpp colors.cpp game.cpp grid.cpp main.cpp position.cpp

CXX = g++
CXXFLAGS = -Wall -O2
LDFLAGS = -lraylib -lgdi32 -lwinmm

$(TARGET): $(SRCS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRCS) $(LDFLAGS)

clean:
	rm -f $(TARGET)