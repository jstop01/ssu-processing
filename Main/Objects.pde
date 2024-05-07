public enum ObjectType {
  tiger,
  boy,
  girl,
  mom,
  tiger_mom
}

public enum ObjectPoseType {
  front,
  back
}

final ObjectFactory objectFactory = new ObjectFactory();

public class ObjectFactory {
  public ShapeObject create(ObjectType type, ObjectPoseType pose) {
    String path = getShapePath(type, pose);

    if (path.endsWith(".svg"))
      return new ShapeObject(loadShape(path), new PVector(0,0), new PVector(100,100), new PVector(0,0,0));
    else if (path.endsWith(".png"))
      return new ShapeObject(loadImage(path), new PVector(0,0), new PVector(100,100), new PVector(0,0,0));

    throw new UnsupportedOperationException("Not implemented : " + path);
  }
  
  public String getShapePath(ObjectType type, ObjectPoseType pose) {
    boolean useSvg = false;
    String prefix = "res/characters/" + (useSvg ? "svg/" : "png/");
    String extension = useSvg ? ".svg" : ".png";
    switch (type) {
      case tiger:
        if (pose == ObjectPoseType.front) return prefix + "tiger_f" + extension;
        //if (pose == ObjectPoseType.front) return prefix + "tiger_f" + extension;
        else if (pose == ObjectPoseType.back) return prefix + "tiger_b" + extension;
        break;
      case boy:
        if (pose == ObjectPoseType.front) return prefix + "boy_f" + extension;
        else if (pose == ObjectPoseType.back) return prefix + "boy_b" + extension;
        break;
      case girl:
        if (pose == ObjectPoseType.front) return prefix + "girl_f" + extension;
        else if (pose == ObjectPoseType.back) return prefix + "girl_b" + extension;
        break;
      case mom:
        if (pose == ObjectPoseType.front) return prefix + "mom_f" + extension;
        else if (pose == ObjectPoseType.back) return prefix + "mom_b" + extension;
        break;
      case tiger_mom:
        if (pose == ObjectPoseType.front) return prefix + "tiger_mom_f" + extension;
        else if (pose == ObjectPoseType.back) return prefix + "tiger_mom_b" + extension;
        break;
      default: throw new UnsupportedOperationException("Not implemented : " + type + " " + pose);
    }
    return "";
  }
}

public class ShapeObject {
  private PShape shape;
  private PImage image;

  public PVector position;
  public PVector size;
  public PVector scale;
  public PVector rotation;

  public ShapeObject(PShape shape, PVector position, PVector size, PVector rotation) {
    this.shape = shape;
    this.position = position;
    this.size = size;
    this.scale = new PVector(1, 1, 1);
    this.rotation = rotation;
  }

  public ShapeObject(PImage image, PVector position, PVector size, PVector rotation) {
    this.image = image;
    this.position = position;
    this.size = size;
    this.scale = new PVector(1, 1, 1);
    this.rotation = rotation;
  }
  
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
    rotate(rotation.x);
    shape(shape, position.x, position.y, size.x, size.y);

    popStyle();
  }

  private void drawImage() {
    pushStyle();
    
    imageMode(CENTER);
    rotate(rotation.x);
    //image(image, position.x, position.y, size.x, size.y);
    image(image, position.x, position.y, image.width * scale.x, image.height * scale.y);

    popStyle();
  }
}
