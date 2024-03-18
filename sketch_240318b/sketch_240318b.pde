int[] bricks = new int[10];

void setup() {
  size(500, 500);
  int i = 0;
  while(i < bricks.length) {
    bricks[i] = 1;
    i++;
  }
}

void draw() {
  background(0);
  int i = 0;
  while(i < bricks.length) {
    if (bricks[i] == 1) {
      fill(128, 128, 128);
    } else {
      fill(0, 0, 0);
    }
    rect(i * 50, 0, 50, 50);
    i++;
  }
  if (mousePressed) {
    if (mouseY <= 50) {
      bricks[mouseX / 50] = 0;
    }
  }
}