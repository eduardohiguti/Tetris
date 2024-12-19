#pragma once
#include <vector>
#include <map>
#include "position.h"
#include "colors.h"

class Block {
    public:
        Block();
        void Draw();
        void Move(int rows, int columns);
        std::vector<Position> GetCellPosition();
        void Rotate();
        void UndoRotation();
        int id;
        std::map<int, std::vector<Position>> cells;

    private:
        int cellSize;
        int rotationState;
        std::vector<Color> colors;
        int rowOffset;
        int columnOffset;
};