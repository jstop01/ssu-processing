public class SpriteAnimation extends Drawable {
  private PImage[] images;
  private float cycleSeconds;
  private float frameSeconds;
  private float timeElapsed;
  private int currentFrame;
  private int nTimes;
  private int nTimesPlayed;
  public SpriteAnimation(PImage[] images) {
    this.images = images;
    this.scale = new PVector(1, 1);
  }

  public void playNTimes(float cycleSeconds, int n) {
    this.cycleSeconds = cycleSeconds;
    this.frameSeconds = cycleSeconds / images.length;
    this.nTimes = n;
    this.timeElapsed = 0;
    this.currentFrame = 0;
    this.nTimesPlayed = 0;
  }

  @Override
  public void draw() {
    pushStyle();

    PImage image = null;
    if (nTimesPlayed < nTimes) {
      image = images[currentFrame];

      timeElapsed += deltaTime;
      if (timeElapsed > frameSeconds) {
        timeElapsed = 0;
        currentFrame++;
        if (currentFrame >= images.length) {
          currentFrame = 0;
          nTimesPlayed++;
        }
      }
    }
    else {
      // draw last frame
      image = images[images.length - 1];
    }

    imageMode(CENTER);
    rotate(zAngle);
    if (image == null) {
      println("image is null");
    } else {
      image(image, x, y, image.width * scale.x, image.height * scale.y);
    }

    popStyle();
  }
}
