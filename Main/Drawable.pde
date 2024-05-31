공개 클래스 추첨 가능 {
 보호 플로트 x;
 보호 부유물;
 보호 플로트 이니셜W;
 보호 플로트 이니셜H;
 보호 부유물;
 보호 부유물;
 보호 플로트 zAngle;
 보호된 intzIndex;
 보호된 PVector startPos;
 보호된 PVector endPos;
 보호된 PVector 센터;
 보호 PVector 스케일;
 보호된 부울은 MouseOver입니다.
  
 공개 인출 가능() {
 이것.setup(0, 0, 0, 0, 0);
 }

 공용 드로잉 가능(플로트 x, 플로트, 플로트 w, 플로트) {
 이.setup(x,y,w,h,0);
 }

 공용 드로잉 가능(플로트 x, 플로트, 플로트 w, 플로트, intzIndex) {
 this.setup(x, y, w, h, zIndex);
 }
  
 공용 공백 설정(플로트 x, 플로트, 플로트 w, 플로트, intzIndex){
 this.x = x;
 이.y = y;
 이.w = w;
 이.h = h;
 이.초기 W = w;
 이.초기 H = h;
 this.zAngle = 0;
 this.zIndex = zIndex;
 마우스 오버 = false입니다.

 this.startPos = 새 PVector(x, y);
 this.endPos = 새로운 PVector(x + w, y + h);
 this.center = 새 PVector(x + w/2, y + h/2);
 this.scale = new PVector (1, 1);
 }

 공용 플로트 get X() { return x; }
 공용 플로트 get Y() { return y; }

 공용 공백 집합 위치(플로트 x, 플로트) {
 this.x = x;
 이.y = y;
 }

 publicfloat getScaleX() { return scale.x; }
 publicfloat getScaleY() { return scale.y; }

 공용 공백 집합스케일(플로트 x, 플로트) {
 this.scale.x = x;
 이 저울y = y;
 this.w = this.initial W * abs(x);
 this.h = this.initial H * abs(y);
 }

 // rotate 기본 함수랑 겹쳐서 이름 바꿈..
 공용 void d_rotate(floatzAngle) {
 this.zAngle = zAngle;
 }

 // 드로우 함수
 공개 무효 드로우 () {
 System.out.println("Draw");
 }

 클릭(){에 대한 공개 무효
 System.out.println("Clicked");
 }

 공용 부울 마우스Pressed(){
 var modX = this.x - this.w / 2;
 var modY = this.y - this.h / 2;
 만약에(
 마우스X > modX 
 && 마우스X < modX + this.w
 && 마우스 Y > modY 
 && 마우스Y < modY + this.h
 ){
 클릭() 시.
 진실로 답하다.
 } 
 거짓으로 반환합니다.
 }

 공용 부울은 MouseOver() {
 var modX = this.x - this.w / 2;
 var modY = this.y - this.h / 2;
 만약에(
 마우스X > modX 
 && 마우스X < modX + this.w
 && 마우스 Y > modY 
 && 마우스Y < modY + this.h
 ){
 진실로 답하다.
 } 
 거짓으로 반환합니다.
 }

 공개 무효 업데이트 () {
 만약 (is mouseOver() {
 만약 (!이것은 마우스 오버입니다) {
 setScale(getScaleX() * 1.2, getScaleY() * 1.2);
 마우스 오버 = true 입니다.
 }
 } 그 외 {
 (이것은 마우스 오버입니다) {
 setScale(getScaleX() / 1.2, getScaleY() / 1.2);
 마우스 오버 = false입니다.
 }
 }
 }
}
