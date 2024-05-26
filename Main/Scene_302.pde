public class Scene_302 extends BaseScene {
  int Y_AXIS = 1;
  int X_AXIS = 2;
  color b1, b2;
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 303; }
  public void setup() {
    b1 = color(#805955);
    b2 = color(#1c1a27);

    int numStars = 30; // 별의 수
    float[] starX = new float[numStars];
    float[] starY = new float[numStars];
    float[] starBrightness = new float[numStars];
    float[] starBrightnessChange = new float[numStars];
    color[] starColor = new color[numStars];

    for (int i = 0; i < numStars; i++) {
      starX[i] = random(width);
      starY[i] = random(height / 2.5); // 상단 1/2.5 영역에만 별을 배치
      starBrightness[i] = random(100, 255);
      starBrightnessChange[i] = random(-10, 100); // 밝기 변화량 설정
    }

    Drawable starlight = new Starlight(numStars, starX, starY, starBrightness, starBrightnessChange, starColor);
    drawManager.addDrawable(starlight);
    uiManager.dialogUi.set(uiManager.getDialogDataById("302001"));
  }
 
  public void draw() {
    pushStyle();

    setGradient(0, 0, width, height, b2, b1, Y_AXIS);
    drawManager.drawing();
    uiManager.drawing();

    popStyle();
  }
  
  void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {
    noFill();
    if (axis == Y_AXIS) {  // Top to bottom gradient
      for (int i = y; i <= y+h; i++) {
        float inter = map(i, y, y+h, 0, 1);
        color c = lerpColor(c1, c2, inter);
        stroke(c);
        line(x, i, x+w, i);
      }
    } else if (axis == X_AXIS) {  // Left to right gradient
      for (int i = x; i <= x+w; i++) {
        float inter = map(i, x, x+w, 0, 1);
        color c = lerpColor(c1, c2, inter);
        stroke(c);
        line(i, y, i, y+h);
      }
    }
  }

  
  public void mousePressed() {
    loadNextScene();
  }
}
