public enum ObjectType {
  tiger("tiger"),
  boy("boy"),
  girl("girl"),
  mom("mom"),
  tiger_mom("tiger_mom");

  public final String name;

  private ObjectType(String name) {
    this.name = name;
  }
}

public enum BackgroundType {
  구름1("구름1"),
  구름2("구름2"),
  달("달"),
  대문("대문"),
  돌과풀("돌과풀"),
  무서운나무("무서운나무"),
  반짝1("반짝1"),
  반짝2("반짝2"),
  반짝3("반짝3"),
  초가집("초가집"),
  해("해");

  public final String name;

  private BackgroundType(String name) {
    this.name = name;
  }
}

public enum ObjectPoseType {
  front("f"),
  back("b");
  
  public final String name;

  private ObjectPoseType(String name) {
    this.name = name;
  }
}

final ObjectFactory objectFactory = new ObjectFactory();

public class ObjectFactory {
  public ShapeObject create(ObjectType type, ObjectPoseType pose) {
    String path = getShapePath(type, pose);

    if (path.endsWith(".svg"))
      return new ShapeObject(loadShape(path));
    else if (path.endsWith(".png"))
      return new ShapeObject(loadImage(path));

    throw new UnsupportedOperationException("Not implemented : " + path);
  }

  public ShapeObject create(BackgroundType type) {
    String path = "res/bg/" + type.name + ".png";
      return new ShapeObject(loadImage(path));
  }
  
  public String getShapePath(ObjectType type, ObjectPoseType pose) {
    if (!(type instanceof ObjectType) || !(pose instanceof ObjectPoseType))
      throw new UnsupportedOperationException("Not implemented : " + type + " " + pose);
    
    boolean useSvg = false;
    String prefix = "res/characters/" + (useSvg ? "svg/" : "png/");
    String extension = useSvg ? ".svg" : ".png";
    
    return prefix + type.name + "_" + pose.name + extension;
  }
}

public class ShapeObject extends Drawable {
  private PShape shape;
  private PImage image;

  public ShapeObject(PShape shape) {
    this.shape = shape;
    this.scale = new PVector(1, 1, 1);
  }

  public ShapeObject(PImage image) {
    this.image = image;
    this.scale = new PVector(1, 1, 1);
  }
  
  @Override
  public void draw() {
    if (shape != null)
      drawShape();
    if (image != null)
      drawImage();
  }

  private void drawShape() {
    pushStyle();

    noStroke();
    shapeMode(CENTER);
    rotate(zAngle);
    shape(shape, abstractX, abstractY, w, h);

    popStyle();
  }

  private void drawImage() {
    pushStyle();
    
    imageMode(CENTER);
    rotate(zAngle);
    //image(image, position.x, position.y, size.x, size.y);
    image(image, abstractX, abstractY, image.width * scale.x, image.height * scale.y);

    popStyle();
  }
}
