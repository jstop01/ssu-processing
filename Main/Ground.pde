public class Ground extends Drawable {
    int x;
    int y;
    int w;
    int h;
    int zIndex;
    color c;

    public Ground(int zIndex, color c) {
      super();
      this.x = 0;
      this.y = height / 5 * 4;
      this.w = width;
      this.h = height / 5;
      this.zIndex = zIndex;
      this.c = c;
    }

    public Ground(int x, int y, int w, int h, int zIndex, color c) {
        super();
        this.x = x;
        this.y = y;
        this.w = w;
        this.h = h;
        this.zIndex = zIndex;
        this.c = c;

        this.setup(this.x, this.y, this.w, this.h, this.zIndex);
    }

    @Override
    public void draw() {
      pushStyle();

      noStroke();
      fill(this.c);
      rect(this.x, this.y, this.w, this.h);
      
      popStyle();
    }

    @Override
    public void onClick() {}
}