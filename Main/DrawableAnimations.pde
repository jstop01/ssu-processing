public class BaseAnimation {
  public BaseAnimation(Drawable target) {
      this.target = target;
  }
  public Drawable target;
  public float duration;
  public EaseType easeType = EaseType.Linear;
  public boolean isDone;

  // -1 for infinite
  // 0 for one direciton
  // > 0 for repeat
  public int repeatCount = 0;
  
  protected boolean reverse;

  public void update() {
  }
}


public class MoveAnimation extends BaseAnimation {
  public MoveAnimation(Drawable target) {
      super(target);
      startX = target.getX();
      startY = target.getY();
  }

  public float destX;
  public float destY;

  private float startX;
  private float startY;

  private float duration;
  private float elapsedTime;

  @Override
  public void update() {
    elapsedTime += deltaTime;
    float t = elapsedTime / duration;
    if (t > 1.0f) {
      t = 1.0f;
      isDone = true;
    }

    float currentX = easeMethod.evaluate(easeType, startX, destX, t);
    float currentY = easeMethod.evaluate(easeType, startY, destY, t);

    target.setPosition((int)currentX, (int)currentY);

    if (isDone && (repeatCount != 0 && repeatCount > 0)) {
      if (reverse) {
        if (repeatCount != 0) {
          repeatCount--;
          if (repeatCount == 0) {
            return;
          }
        }
      }

      reverse = !reverse;
      
      float temp = startX;
      startX = destX;
      destX = temp;

      temp = startY;
      startY = destY;
      destY = temp;
      isDone = false;
      elapsedTime = 0;
    }
  }
}

public class ScaleAnimation extends BaseAnimation {
  public ScaleAnimation(Drawable target) {
      super(target);
      startX = target.getScaleX();
      startY = target.getScaleY();
  }

  public float destX;
  public float destY;

  private float startX;
  private float startY;

  private float duration;
  private float elapsedTime;

  @Override
  public void update() {
    elapsedTime += deltaTime;
    float t = elapsedTime / duration;
    if (t > 1.0f) {
      t = 1.0f;
      isDone = true;
    }

    float currentScaleX = easeMethod.evaluate(easeType, startX, destX, t);
    float currentScaleY = easeMethod.evaluate(easeType, startY, destY, t);

    target.setScale(currentScaleX, currentScaleY);

    if (isDone && (repeatCount != 0 && repeatCount > 0)) {
      if (reverse) {
        if (repeatCount != 0) {
          repeatCount--;
          if (repeatCount == 0) {
            return;
          }
        }
      }

      reverse = !reverse;
      
      float temp = startX;
      startX = destX;
      destX = temp;

      temp = startY;
      startY = destY;
      destY = temp;
      isDone = false;
      elapsedTime = 0;
    }
  }
}