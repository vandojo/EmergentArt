
Cell[][] _cellArray;

int _cellSize = 10;
int _numX, _numY;

void setup() {
size(500, 300);
_numX = floor(width/_cellSize);
_numY = floor(height/_cellSize);
restart();

}

void restart() {

_cellArray = new Cell[_numX][_numY];
for (int x = 0; x < _numX; x++) {
for (int y =0; y < _numY; y++ ) {
Cell newCell = new Cell(x, y);
_cellArray[x][y] = newCell;
}}


for (int x = 0; x < _numX; x++) {

for (int y = 0; y < _numY; y++ ) {
// get neighbours of current cell
int above = y-1;
int below = y+1;
int left = x-1;
int right = x+1;

// wrap neighbours at edges
if (above < 0) {

above = _numY -1;
}
if (below == _numY) {
below = 0;
}
if (left < 0 ) {
left = _numX-1;
}
if (right == _numX) {
right = 0;
}

// add neighbours cells
_cellArray[x][y].addNeighbour(_cellArray[left][above]);
_cellArray[x][y].addNeighbour(_cellArray[left][y]);
_cellArray[x][y].addNeighbour(_cellArray[left][below]);
_cellArray[x][y].addNeighbour(_cellArray[x][below]);
_cellArray[x][y].addNeighbour(_cellArray[right][below]);
_cellArray[x][y].addNeighbour(_cellArray[right][y]);
_cellArray[x][y].addNeighbour(_cellArray[right][above]);
_cellArray[x][y].addNeighbour(_cellArray[x][above]);

}}

}



void draw() {
background(200);
for (int x =0 ; x<_numX; x++) {
for (int y =0; y <_numY; y++ ){
_cellArray[x][y].calcNextState();
}

}
translate(_cellSize/2,_cellSize/2);

for (int x =0 ; x<_numX; x++) {
for (int y =0; y <_numY; y++ ){
_cellArray[x][y].drawMe();
}}
}



void mousePressed() {
restart();
}
