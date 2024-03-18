int x, y, xDir, yDir, diam;
color padColor, ballColor;
int padX, padY, padWidth, padHeight;

void setup() {
  diam = 80;
  size(800, 600);
  x = width / 2;
  y = height / 2;
  padHeight = 60;
  padWidth = 600;
  padX = 0;
  padY = height - padHeight; 
  padColor = #af0000;
  ballColor = #FFFF00;
  xDir = 10;
  yDir = 10;
}

void draw() {
  background(128);
  fill(128);
  noStroke();
  fill(ballColor);
  ellipse(x, y, diam, diam); 
  x += xDir; //x = x + xDir;
  y += yDir; 
  
  
  // drawing a pad at new positon
  fill(padColor);
  padX = mouseX - padWidth/2;
  rect(padX, padY, padWidth, 20, 15);  
  
  // ball bouncing 
  if (x <= diam / 2 || x > width - diam / 2) { // left and right side check
    xDir *= -1;
  }
  if (y <= diam / 2 || y >= height - diam/2) { // down side check
    yDir *= -1;
  }
  
  if (x > padX && x < padX + padWidth && y + diam / 2 >= padY) {
    yDir *= -1;
    if (padColor == 0) {
      padColor = 200;
    } else if (padColor == 200) {
      padColor = 400;
    } else {
      padColor = 0;
    }
  }

}
