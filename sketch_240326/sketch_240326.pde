import processing.sound.*;
// 모든 x, y는 해당 오브젝트의 센터를 기준으로 합니다.

class Poop { // 재석
  public int x, y, xDiam, yDiam, speed,click;
  Poop(int x, int y, int xDiam, int yDiam, int speed, int click) {
    this.x = x;
    this.y = y;
    this.xDiam = xDiam;
    this.yDiam = yDiam;
    this.speed = speed;
    this.click = click;
  }
  
  void draw() {
    pushStyle();
    if(click == 0) {
      image(smallPoop, x - xDiam / 2, y, xDiam, yDiam);
    } else {
      image(bigPoop, x - xDiam / 2, y, xDiam, yDiam);
    }
    popStyle();
  }
  
  void move() {
    y += speed;
  }
  
  void increaseSize() { // 똥 크기 조절
    xDiam += 5; 
    yDiam += 5; 
  }
}

void movePoops() {
  for (int i = poops.size() - 1; i >= 0; i--) {
    Poop p = poops.get(i);
    p.move();
    if (p.y > height) {
      count++;
      poops.remove(i);
    }
  }
}

void drawPoops() {
  for (int i = poops.size() - 1; i >= 0; i--) {
    Poop p = poops.get(i);
    p.draw();
  }
}

void mousePressed() {
  createNewPoop(); 
}

void createNewPoop() {
  int newSize = 100; 
  poops.add(new Poop(mouseX , 130, newSize, newSize, 3, 1));
  sound = new SoundFile(this, "bigPoop.mp3");
  sound.play();
}

void addPoopPerSec() {
  if (frameCount % 60 == 0) {
    poops.add(new Poop(mouseX, 130, 50, 50, 3, 0));
    sound = new SoundFile(this, "smallPoop.mp3");
    sound.play();
  }
}


class Batchu { // 미선
  public int x = 0, y = 0, duration;
  Batchu(int _duration) {
    this.duration = _duration;
  }
  void move(int _x, int _y) {  
    this.x = _x;
    this.y = _y;
  }
  // x와 y좌표를 참고해서 배추의 엉덩이를 그리세요. 
  void draw() {

    noStroke();
    //발
    fill(#E38935);
    ellipse(x - 90, y - 60, 40, 50); // L_발
    ellipse(x + 20, y - 60, 40, 50); // R_발

    //발바닥_화이트
    fill(255);
    ellipse(x - 90, y - 60, 30, 40);// L_발바닥_화이트
    ellipse(x + 20, y - 60, 30, 40);// R_발바닥_화이트

    //발바닥_깜장
    fill(0);
    ellipse(x - 90, y - 58, 15, 15);// L_발바닥_깜장
    ellipse(x - 90, y - 45, 9, 9);
    ellipse(x - 80, y - 53, 9, 9);
    ellipse(x - 100, y - 53, 9, 9);
    ellipse(x + 20, y - 58, 15, 15);// R_발바닥_깜장
    ellipse(x + 20, y - 45, 9, 9);
    ellipse(x + 10, y - 53, 9, 9);
    ellipse(x + 30, y - 53, 9, 9);

    //엉덩이
    fill(#E38935);
    beginShape();
    vertex(x - 130, y - 120);
    bezierVertex(x - 130, y - 45, x - 30, y - 45, x - 30, y - 95);
    bezierVertex(x - 30, y - 50, x + 70, y - 45, x + 70, y - 120);
    bezierVertex(x + 70, y - 190, x - 30, y - 190, x - 30, y - 190);
    bezierVertex(x - 30, y - 190, x - 130, y - 190, x - 130, y - 120);
    endShape();

    //꼬리
    fill(255);
    ellipse(x - 30, y - 150, 50, 50);// L_발바닥_깜장

  }
}
class Person {
  // x좌표, y좌표, x지름, y지름, 속도
  public int x, y, xDiam, yDiam, speed;

  Person(int x, int y, int xDiam, int yDiam, int speed) {
    this.x = x;
    this.y = y;
    this.xDiam = xDiam;
    this.yDiam = yDiam;
    this.speed = speed;
  }
  // speed와 키보드의 방향에 따라 좌표를 조정하세요. 
  void move(int x, int y) { // 재은
    this.x = x;
    this.y = y;
  }
  // 사람을 그리세요 
  void draw() { // 재은
    pushStyle();
    fill(#000000);
    ellipse(x, y, 35, 35);
    stroke(#000000);
    line(x, y + 4, x, y + 70);
    line(x + 52, y + 47, x - 52, y + 47);
    line(x + 2, y + 67, x - 20, y + 115);
    line(x, y + 67, x + 30, y + 115);
    popStyle();
  }

  boolean checkIsTouchedPoops(Person person, ArrayList<Poop> poops) {  // 서현
    return true;
  }
}

void keyPressed() {
  if (keyCode == LEFT) {
    person.move(person.x - person.speed, person.y);
  } else if (keyCode == RIGHT) {
    person.move(person.x + person.speed, person.y);
  } else if (keyCode == UP) {
    person.move(person.x, person.y - person.speed);
  } else if (keyCode == DOWN) {
    person.move(person.x, person.y + person.speed);
  }
}


// 꿈을 펼쳐보세요
class WallPaper { // 나영
  WallPaper() {}
}

Batchu batchu = new Batchu(3);
Person person;
WallPaper WallPaper = new WallPaper();
ArrayList<Poop> poops = new ArrayList<Poop>();
PImage smallPoop,bigPoop;
SoundFile sound;
int count = 0;

void setup() {
  size(1280, 720);
  smallPoop = loadImage("smallPoop.png");
  bigPoop = loadImage("bigPoop.png");
  person = new Person(width / 2, height - 100, 50, 100, 30);
}

// 똥이 화면의 아래를 넘어가면 1점씩 계산해요. 
int calculateScore(ArrayList<Poop> poops) { // 서현
  return 0;
}

void drawScore(int score) { // 은지 

}

void draw() {
  background(255); // 매 프레임마다 배경을 지워줍니다.
  batchu.move(mouseX, 200);
  batchu.draw();
  drawPoops();
  movePoops();
  addPoopPerSec();
  person.draw();

}