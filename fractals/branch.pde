class Branch {
    int level,num;
    PointObj[] outerPoints = {};

    Branch(int lev, int n, PointObj[] points){
        level = lev;
        num = n;
        outerPoints = points;
    }

    void drawMe(){
        strokeWeight(5-level);
        for(int i=0; i<outerPoints.length;i++){
            int nexti =i+1;
            if(nexti == outerPoints.length){
                nexti=0;
            }
            line(outerPoints[i].x,outerPoints[i].y,outerPoints[nexti].x,outerPoints[nexti].y);
        }
    }
}