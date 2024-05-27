import { PVector } from "./PVector";

export class Drawable {
  protected x = 0;
  protected y = 0;
  protected initialW = 0;
  protected initialH = 0;
  protected w = 0;
  protected h = 0;
  protected zAngle = 0;
  protected zIndex = 0;
  protected startPos!: PVector;
  protected endPos!: PVector;
  protected center!: PVector;
  protected scale!: PVector;

  public constructor(x = 1, y = 1, w = 1, h = 1, zIndex = 1) {
    this.setup(x, y, w, h, zIndex);
  }

  public setup(x: number, y: number, w: number, h: number, zIndex: number) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.initialW = w;
    this.initialH = h;
    this.zAngle = 0;
    this.zIndex = zIndex;

    this.startPos = new PVector(x, y);
    this.endPos = new PVector(x + w, y + h);
    this.center = new PVector(x + w / 2, y + h / 2);
    this.scale = new PVector(1, 1);
  }

  public getX() {
    return this.x;
  }
  public getY() {
    return this.y;
  }

  public setPosition(x: number, y: number) {
    this.x = x;
    this.y = y;
  }

  public getScaleX() {
    return this.scale.x;
  }
  public getScaleY() {
    return this.scale.y;
  }

  public setScale(x: number, y: number) {
    this.scale.x = x;
    this.scale.y = y;
    this.w = this.initialW * Math.abs(x);
    this.h = this.initialH * Math.abs(y);
  }

  // rotate 기본 함수랑 겹쳐서 이름 바꿈..
  public d_rotate(z: number) {
    this.zAngle = z;
  }

  // draw function
  public draw() {
    console.log("Draw");
  }

  public onClick() {
    console.log("Clicked");
  }

  public mousePressed() {
    var modX = this.x - this.w / 2;
    var modY = this.y - this.h / 2;
    if (
      p.mouseX > modX &&
      p.mouseX < modX + this.w &&
      p.mouseY > modY &&
      p.mouseY < modY + this.h
    ) {
      this.onClick();
      return true;
    }
    return false;
  }
}
