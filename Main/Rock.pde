public class Rock extends Drawable {
    int x;
    int y;
    int w;
    int h;
    int zIndex;
    color c;
    public Rock(int x, int y, int w, int h, int zIndex, color c) {
        super();
        this.x = 100;
        this.y = 100;
        this.w = 200;
        this.h = 200;
        if(x != 0){
            this.x = x;
        }
        if(y != 0){
            this.y = y;
        }
        if(w != 0){
            this.w = w;
        }
        if(h != 0){
            this.h = h;
        }
        this.zIndex = zIndex;
        this.c = c;
        this.setup(this.x,this.y,this.w,this.h,this.zIndex);
    }

    @Override
    public void draw() {
        fill(this.c);
        rect(this.x, this.y, this.w, this.h);
    }

    @Override
    public void onClick(){
        System.out.println("Clicked Rock " + this.zIndex);
    }
}