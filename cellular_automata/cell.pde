// cell class

class Cell {
  float x, y;
  boolean state;
  boolean nextState;
  Cell[] neighbours;
  Cell(float ex, float why) {
    x = ex * _cellSize;
    y = why * _cellSize;
    if (random(2) > 1) {
      nextState = true;
    } else {
      nextState = false;
    } 
    state = nextState;
    neighbours = new Cell[0];
  }
  void addNeighbour(Cell cell) {
    neighbours = (Cell[])append(neighbours, cell);
  }
  void calcNextState() {
    // implement later
  }
  void drawMe() {
    state = nextState;
    stroke(0);
    if (state == true) {
      fill(0);
    }
    else {
      fill(255);
    }
    ellipse(x,y,_cellSize,_cellSize);
  }
}
