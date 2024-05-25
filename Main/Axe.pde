public class Axe extends Drawable {
  @Override
  public void draw() {
    float axe = PI/3;

    pushStyle();
    fill(#DD9A5E);
    noStroke();
    translate(x+112, y+-581);
    rotate(axe);
    rectMode(CENTER);
    rect(x+5, y+-78, 274, 44, 30);
    popStyle();

    pushStyle();
    fill(#6C6E6E);
    noStroke();
    quad(x-116, y+10, x-93, y-119, x-46, y-124, y+-12, y+1);
    popStyle();

    pushStyle();
    stroke(175, 173, 169);
    strokeWeight(23);
    noFill();
    curveTightness(0.6);
    beginShape();
    curveVertex(x-494, y - 80);
    curveVertex(x-107, y +10);
    curveVertex(x-22, y + -2);
    curveVertex(x+284, y -218);
    endShape();
    popStyle();
  }
}