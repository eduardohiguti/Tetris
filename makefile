# Nome do executável
TARGET = Tetris.exe

# Lista de arquivos fonte
SRCS = block.cpp blocks.cpp colors.cpp grid.cpp main.cpp position.cpp

# Compilador e flags
CXX = g++
CXXFLAGS = -Wall -O2
LDFLAGS = -lraylib -lgdi32 -lwinmm

# Regra principal: compilar o programa
$(TARGET): $(SRCS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRCS) $(LDFLAGS)

# Regra para limpar arquivos compilados
clean:
	rm -f $(TARGET)
