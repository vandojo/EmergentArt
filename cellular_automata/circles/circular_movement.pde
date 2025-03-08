int _num = 10;
int diam = 10;
float centX, centY;
Circle[] _circleArr = {};
void setup(){
size(500,300);
frameRate(26);
background(255);
smooth();
centX = width/2;
centY = height/2;
strokeWeight(1);
fill(150,50);
drawCircles();
background(255);}

void draw(){
//background(190);
for (int i =0; i< _circleArr.length; i++) {
Circle thisCirc = _circleArr[i];
thisCirc.updateMe();
}
drawBox();
}

void mouseReleased(){
drawCircles();
}

void drawCircles(){
for (int i = 0; i< _num; i++) {
Circle thisCirc = new Circle();
thisCirc.drawMe();
_circleArr = (Circle[])append(_circleArr,thisCirc);
}
}



