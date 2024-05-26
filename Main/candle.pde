//씬 번호 202, 203, 207번에 나오는 촛불 코드입니다.

void setup(){
  size(1280, 720);
}

void draw(){
  int lightX = 500;
  int lightY = 200;
  int lightW = 30;
  int lightH = 75;
  
  //초 본체
  beginShape();
  fill(255);
  noStroke();
  vertex(lightX, lightY); //꼭짓점
  bezierVertex(lightX, lightY, lightX+lightW/2, lightY+20, lightX+lightW, lightY);
  vertex(lightX+lightW, lightY); //꼭짓점
  vertex(lightX+lightW, lightY+lightH); //꼭짓점
  bezierVertex(lightX+lightW, lightY+lightH, lightX+lightW/2, lightY+lightH+20, lightX, lightY+lightH);
  vertex(lightX, lightY+lightH); //꼭짓점
  pushStyle();
  fill(color(254, 235, 207));
  ellipse(lightX+lightW/2, lightY, lightW, 20);
  popStyle();
  endShape();
  
  //촛불
  beginShape();
  fill(color(203, 37, 36)); //빨간 불꽃
  vertex(lightX+lightW/2, lightY);
  bezierVertex(lightX+lightW/2, lightY,lightX-lightW/3*2, lightY-(lightH/3*2)/2, lightX+lightW/2, lightY-lightH/3*2);
  vertex(lightX+lightW/2, lightY-lightH/3*2);
  bezierVertex(lightX+lightW/2, lightY-lightH/3*2,lightX+lightW+lightW/3*2, lightY-(lightH/3*2)/2, lightX+lightW/2, lightY);
  vertex(lightX+lightW/2, lightY);
  endShape();
  
  beginShape();
  fill(color(255,173, 92)); //주황 불꽃
  vertex(lightX+lightW/2, lightY);
  bezierVertex(lightX+lightW/2, lightY, lightX-lightW/4, lightY-lightH/3, lightX+lightW/2, lightY-lightH/2);
  vertex(lightX+lightW/2, lightY-lightH/2);
  bezierVertex(lightX+lightW/2, lightY-lightH/2,lightX+lightW+lightW/4, lightY-lightH/3, lightX+lightW/2, lightY);
  vertex(lightX+lightW/2, lightY);
  endShape();
  
  beginShape();
  fill(color(255, 255,157)); //노랑 불꽃
  vertex(lightX+lightW/2, lightY);
  bezierVertex(lightX+lightW/2, lightY, lightX+lightW/6, lightY-lightH/3, lightX+lightW/2, lightY-lightH/3-lightH/15);
  vertex(lightX+lightW/2, lightY-lightH/3-lightH/15);
  bezierVertex(lightX+lightW/2, lightY-lightH/3-lightH/15,lightX+lightW-lightW/6, lightY-lightH/3, lightX+lightW/2, lightY);
  vertex(lightX+lightW/2, lightY);
  endShape();
}
