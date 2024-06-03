import p5 from "p5";
import { Drawable } from "./Drawable";

export class ShapeObject extends Drawable {
  protected image: p5.Image;

  constructor(image: p5.Image) {
    super(0, 0, image.width, image.height);
    this.image = image;
    this.scale = new p5.Vector();
  }

  draw(): void {
    if (this.image != null) this.drawImage();
  }

  private drawImage(): void {
    p.push();

    p.imageMode(p.CENTER);
    p.rotate(this.zAngle);

    if (this.scale.x < 0) {
      p.push();
      p.translate(this.x, this.y);
      p.scale(-1, 1);
      p.image(this.image, 0, 0, this.w, this.h);
      p.pop();
    } else {
      p.image(this.image, this.x, this.y, this.w, this.h);
    }
    p.pop();
  }
}
