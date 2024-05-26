int numPoints = 11;  // 점의 개수
float startX = 700;
float startY = 90;
float w = 400;
float h = 200;
float[] xList = {w * 0.03, w * 0.05, w * 0.08, w * 0.1, w * 0.12, w * 0.15, w * 0.17, w * 0.19, w * 0.2, w * 0.22 , w*0.25};
float[] yList = {h * 0.1, 0, h * 0.2, 0,  h * 0.2, 0,  h * 0.2, 0,  h * 0.2, 0, h * 0.1};

void setup() {
  size(1280, 720);  // 캔버스 크기 설정
  float spacing = w / 8;  // 점 사이의 간격 계산
}

void draw() {
  background(255);  // 배경을 흰색으로 설정
  stroke(0);  // 선의 색을 검정색으로 설정
  fill(0);  // 점의 색을 검정색으로 설정
  
  // 점들과 선을 그림
  for (int i = 0; i < numPoints - 1; i++) {
    ellipse(startX + xList[i], startY + yList[i], 5, 5);  // 점을 작게 그림
    strokeWeight(1);
    line(startX + xList[i], startY + yList[i], startX + xList[i + 1], startY + yList[i + 1]);  // 점들을 선으로 연결
  }
  // 마지막 점
  ellipse(startX + xList[numPoints - 1], startY + yList[numPoints - 1], 5, 5);
  strokeWeight(5);
  line(
    startX + xList[0], 
    startY + (yList[1] + yList[2]) / 2, 
    startX + xList[xList.length - 1], 
    startY + yList[yList.length -1]
  );  // 점들을 선으로 연결
  stroke(255, 0, 0);
  strokeWeight(4);
  line(
    startX + xList[0], 
    startY + (yList[1] + yList[2]) / 2 - 3, 
    startX + xList[xList.length - 1], 
    startY + yList[yList.length -1] - 3
  );  // 점들을 선으로 연결
  
  
  
  
  

}
