public class Drawable {
  protected float x;
  protected float y;
  protected float w;
  protected float h;
  protected float zAngle;
  protected int zIndex;
  protected PVector startPos;
  protected PVector endPos;
  protected PVector center;
  protected PVector scale;
  
  public Drawable() {
    this.setup(0, 0, 0, 0, 0);
  }

  public Drawable(float x, float y, float w, float h) {
    this.setup(x, y, w, h, 0);
  }

  public Drawable(float x, float y, float w, float h, int zIndex) {
    this.setup(x, y, w, h, zIndex);
  }
  
  public void setup(float x, float y, float w, float h, int zIndex){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.zAngle = 0;
    this.zIndex = zIndex;

    this.startPos = new PVector(x, y);
    this.endPos = new PVector(x + w, y + h);
    this.center = new PVector(x + w/2, y + h/2);
    this.scale = new PVector(1, 1);
  }

  public float getX() { return x; }
  public float getY() { return y; }

  public void setPosition(float x, float y) {
    this.x = x;
    this.y = y;
  }

  public float getScaleX() { return scale.x; }
  public float getScaleY() { return scale.y; }

  public void setScale(float x, float y) {
    this.scale.x = x;
    this.scale.y = y;
  }

  public void rotate(float zAngle) {
    this.zAngle = zAngle;
  }

  // draw function
  public void draw(){
    System.out.println("Draw");
  }

  public void onClick(){
    System.out.println("Clicked");
  }
  
  public boolean mousePressed(){
    if(
      mouseX > this.x 
      && mouseX < this.x + this.w
      && mouseY > this.y 
      && mouseY < this.y + this.h
    ){
      this.onClick();
      return true;
    } 
    return false;
  }
}
