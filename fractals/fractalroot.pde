class FractalRoot{
    PointObj[] pointArr = new PointObj[5];
    Branch rootBranch;
    FractalRoot(){
        float centX = width/2;
        float centY = height/2;
        int count =0;
        for (int i=0;i<360;i+=72){
            float x = centX +(400*cos(radians(i)));
            float y=centY + (400*sin(radians(i)));
            pointArr[count] = new PointObj(x,y);
            count++;
        }
        rootBranch = new Branch(0,0,pointArr);
    }
    void drawShape(){
        rootBranch.drawMe();
    }
}