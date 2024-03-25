int faceW = 200;
int faceH = 250;
int eyeW = 40;
int eyeH = 35;
color faceColor = #fbceb1;
color eyeColor = #FFFFFF;
color eyeColor2 = #000000;
color noseColor = #965908;
color noseColor2 = #63C5DA;
color hairColor = #7B4B2A; // 머리 색상
color mouthColor = #FF0000; // 입 색상
int eyeGap = 40;
int centerX;
int centerY;
int hairGap = 10;

void setup(){
  size(400, 500);
  noStroke();
  background(128);
  centerX = width / 2;
  centerY = height / 2;
}


void hair() {
  fill(hairColor);
  rect(centerX - (faceW + hairGap) / 2 , centerY - faceH / 2 - hairGap, faceW + hairGap, (faceH + hairGap) / 2, 200, 200, 20, 20);
}

void face() {
  fill(mousePressed ? mouthColor : faceColor);
  ellipse(centerX, centerY, faceW, faceH);
}

void nose() {
  ellipse(centerX, centerY, faceW, faceH);
  fill(noseColor);
  triangle(centerX, centerY - 20, centerX - 10, centerY, centerX + 10, centerY);
  fill(noseColor2);
}

void noseWater() {
  pushMatrix(); // 현재 좌표계를 저장
  translate(centerX, centerY); // 코의 위치로 좌표계를 이동
  float angle = atan2(mouseY - centerY, mouseX - centerX); // 마우스의 위치에 따른 각도를 계산
  rotate(angle); // 계산된 각도로 좌표계를 회전
  beginShape();
  vertex(0, 0); // 코의 위치에서 시작
  bezierVertex(-40, 30, 40, 90, 0, 90); // 콧물의 모양을 베지어 곡선으로 그림
  strokeWeight(4);
  endShape();
  popMatrix(); // 좌표계를 복원
}

void eyes() {
  fill(eyeColor);
  int eyeY = centerY - 50;
  int eyeLeftX = centerX - 50;
  int eyeRightX = centerX + 50;
  if (mouseY > eyeY) {
    eyeY = eyeY + 10;
  }
  if (mouseY < eyeY) {
    eyeY = eyeY - 10;
  }
  if (mouseX > eyeRightX) {
    eyeRightX = eyeRightX + 10;
    eyeLeftX = eyeLeftX + 10;
  }
  if (mouseX < eyeLeftX) {
    eyeRightX = eyeRightX - 10;
    eyeLeftX = eyeLeftX - 10;
  }
  ellipse(eyeLeftX, eyeY, eyeW, eyeH);
  ellipse(eyeRightX, eyeY, eyeW, eyeH);
  
  fill(eyeColor2);

  ellipse(eyeLeftX, eyeY, eyeW - 20, eyeH - 20);
  ellipse(eyeRightX, eyeY, eyeW - 20, eyeH - 20);
}
void rip() {
  fill(mousePressed ? faceColor : mouthColor);
  arc(centerX, centerY + 30, 80, 40, 0, PI);
}

void draw(){
  // writing your name 
  PFont myFont = createFont("Georgia", 32);
  textFont(myFont);
  fill(#000000);
  textAlign(LEFT, CENTER);  
  text("Yohan Kim", 0, 15);
  hair();
  face();
  nose();
  noseWater();
  eyes();
  rip();
}
