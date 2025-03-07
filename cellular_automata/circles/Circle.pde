class Circle {
float x, y;
float radius;
color linecol, fillcol;
float alph;
float xmove, ymove;

Circle() {
x = random(width);
y = random(height);
radius = random(100) + 10;
linecol = color(random(255), random(255), random(255));
fillcol = color(random(255), random(255), random(255));
alph = random(175);
xmove = random(10) - 5;
ymove = random(10) - 5;
}

void drawMe(){
noStroke();
fill(fillcol, alph);
ellipse(x,y, radius*2, radius*2);
stroke(linecol, 150);
noFill();
ellipse(x,y,10,10);
}

void updateMe(){
x += xmove;
y += ymove;
if(x > (width+radius)){x=0-radius;}
if(x<(0-radius)){x=width+radius;}
if(y>(height+radius)){y=0-radius;}
if(y<(0-radius)){y=height+radius;}

boolean touching = false;
for (int i = 0; i< _circleArr.length; i++ ){
Circle otherCirc = _circleArr[i];
if (otherCirc != this) {
float dis = dist(x,y,otherCirc.x, otherCirc.y);
float overlap = dis - radius - otherCirc.radius;

if (overlap < 0){
float midx, midy;
midx = (x + otherCirc.x)/2;
midy = ( y + otherCirc.y)/2;
stroke(0,100);
noFill();
overlap *= -1;
ellipse(midx,midy,overlap,overlap);
}
}}
// drawMe();
}
}
