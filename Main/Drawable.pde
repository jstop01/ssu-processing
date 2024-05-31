공개 클래스 Scene_313이 BaseScene {을(를) 확장합니다.
 @오버라이드
 publicintegPreviousScene() { return -1; }

 @오버라이드
 public integetNextScene() { return 319; }

 GhostLegGameManager 게임 매니저
 드로잉 가능한 새로운 로프;
 그릴 수 있는 오래된 로프;
  
 공용 공백 설정 () {
 uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(이것));
 uiManager.dialogUi.next();

 배경 로드("50", draw Manager);

 PVector 로프 스케일 = 새로운 PVector(0.15, 0.15);
 new Rope = objectFactory.create("압축된 Res/images/objects/rope_new.png");
 뉴로프.위치 설정(250, 0);
 뉴로프.setScale(ropeScale.x, ropeScale.y);
 Start Animation(new Move Animation(new Rope, 350, 200, 2));
 drawManager.add Drawable(새 로프);

 oldRope = objectFactory.create("압축된 Res/images/objects/rope_old.png");
 구닥다리.위치 설정(폭 - 250, 0);
 구닥다리.setScale(ropeScale.x, ropeScale.y);
 Start Animation(새로운 Move Animation(구 로프, 너비 - 350, 200, 2));
 drawManager.add Drawable(구 로프);

 var boy = objectFactory.create(CharacterType.boy, CharacterPoseType.back);
 boy.set Position(500, 500);
 boy.setScale(0.3, 0.3);
 drawManager.add Drawable(소년);

 var girl = objectFactory.create(CharacterType.girl, CharacterPoseType.back);
 girl.set 위치(800, 500);
 girl.setScale(0.3, 0.3);
 drawManager.add Drawable(소녀);

 게임 관리자 = 새로운 고스트 레그 게임 관리자(2, new int[] {319, 314], new Drawable[]{new Rope, old Rope});
 }
 
 공개 무효 () {
 pushStyle();

 그라디언트 배경 그리기();
 new rope.update();
 구 로프.업데이트();
 draw Manager.drawing();
 uiManager.도면();
    
 popStyle();
 }
  
 공용 공백 마우스Pressed() {
 game Manager.update();
 //loadNextScene();
 }
}
