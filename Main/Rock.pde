public class Rock extends Drawable {
    int x;
    int y;
    int w;
    int h;
    int zIndex;
    public Rock(int x, int y, int w, int h, int zIndex ) {
        super();
        this.x = x;
        this.y = y;
        this.w = 200;
        this.h = 200;
        if(w != 0){
            this.w = w;
        }
        if(h != 0){
            this.h = h;
        }
        this.zIndex = zIndex;
        this.setup(this.x,this.y,this.w,this.h,this.zIndex);
    }

    @Override
    public void draw() {
        rect(this.x, this.y, this.w, this.h);
    }

    @Override
    public void onClick(){
        System.out.println("Clicked Rock " + this.zIndex);
    }
}