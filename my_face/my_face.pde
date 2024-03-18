int faceW = 200;
int faceH = 250;
int eyeW = 30;
int eyeH = 25;
color faceColor = #FEFEFE;
color eyeColor = #000000;
color eyeColor2 = #FFFFFF;
color hairColor = #7B4B2A; // 머리 색상
color mouthColor = #FF0000; // 입 색상
int eyeGap = 40;
int centerX;
int centerY;


void setup() {
  size(400, 500);
  noStroke();
  background(128);
  centerX = width / 2;
  centerY = height / 2;
}

void draw() {
  background(151);
  
  fill(hairColor);
  rect(centerX - faceW/2 + 10, centerY - faceH/2 - 30, faceW - 20, 30); 
  rect(centerX - faceW/2, centerY - faceH/2 - 10, faceW, 50); 
  rect(centerX - faceW/2 - 10, centerY - faceH/2, 20, faceH/2); 
  rect(centerX + faceW/2 - 10, centerY - faceH/2, 20, faceH/2); 
  
  fill(faceColor);
  ellipse(centerX, centerY, faceW, faceH);
  
  fill(eyeColor);
  ellipse(centerX - 50, centerY - 50, eyeW, eyeH);
  ellipse(centerX + 50, centerY - 50, eyeW, eyeH);
  
  fill(eyeColor2);
  ellipse(centerX - 50, centerY - 50, eyeW - 10, eyeH - 10);
  ellipse(centerX + 50, centerY - 50, eyeW - 10, eyeH - 10);
  
  fill(mouthColor);
  arc(centerX, centerY + 30, 80, 40, 0, PI);
}
