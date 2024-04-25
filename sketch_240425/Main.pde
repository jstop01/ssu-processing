// 이벤트 함수는 모두 이 파일에서 정의한다. 같은 이벤트 함수를 여러 파일에서 정의할 수 없기 때문이다.
// 전역 변수도 이 파일에서 정의한다.

void setup() {
  size(1280, 720);
  println("setup");
  sceneManager.loadScene(new Scene_Intro());
}

void draw() {
  BaseScene scene = sceneManager.getCurrentScene();
  if (scene != null) {
    scene.draw();
  }
}

void mousePressed() {
  println("mousePressed");
  BaseScene scene = sceneManager.getCurrentScene();
  if (scene != null) {
    scene.mousePressed();
  } else {
    println("scene is null!");
  }
}
