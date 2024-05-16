public class Rock extends Drawable {
    int zIndex;
    public Rock(int x, int y, int w, int h, int zIndex) {
        super();
        this.setup(x,y,w,h,zIndex);
    }

    @Override
    public void draw() {
        rect(this.abstractX, this.abstractY, this.w, this.h);
    }

    @Override
    public void onClick(){
        System.out.println("Clicked Rock " + this.zIndex);
    }
}