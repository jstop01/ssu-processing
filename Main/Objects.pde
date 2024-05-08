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
      return new ShapeObject(loadShape(path), new PVector(0,0), new PVector(100,100), new PVector(0,0,0));
    else if (path.endsWith(".png"))
      return new ShapeObject(loadImage(path), new PVector(0,0), new PVector(100,100), new PVector(0,0,0));

    throw new UnsupportedOperationException("Not implemented : " + path);
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
