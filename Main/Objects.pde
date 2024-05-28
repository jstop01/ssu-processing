public enum CharacterType {
  tiger("tiger"),
  boy("boy"),
  girl("girl"),
  mom("mom"),
  tiger_mom("tiger_mom");

  public final String name;

  private CharacterType(String name) {
    this.name = name;
  }
}

public enum CharacterPoseType {
  front("f"),
  left("left"),
  climb("climb"),
  climb_rope("climb_rope"),
  black("black"),
  fall("fall"),
  point("point"),
  pray("pray"),
  seat("seat"),
  smile("smile"),
  front_ricecake("front_ricecake"),
  back_ricecake("back_ricecake"),
  hand("hand"),
  back("b"),
  lay("lay"),

  // tiger only
  hungry("hungry"),
  knock("knock"),
  lay_01("lay_01"),
  lay_02("lay_02"),
  lay_03("lay_03"),
  angry("angry"),
  big("big"),
  mouth("mouth"),
  ricecake_01("ricecake_01"),
  ricecake_02("ricecake_02"),
  ricecake_03_1("ricecake_03_1"),
  ricecake_03_2("ricecake_03_2"),
  scream("scream"),
  thirsty("thirsty"),
  threat("threat"),
  well("well");


  
  public final String name;

  private CharacterPoseType(String name) {
    this.name = name;
  }
}

final ObjectFactory objectFactory = new ObjectFactory();

public class ObjectFactory {
  public ShapeObject create(CharacterType type, CharacterPoseType pose) {
    String path = getShapePath(type, pose);

    if (path.endsWith(".svg"))
      return new ShapeObject(loadShape(path));
    else if (path.endsWith(".png"))
      return new ShapeObject(loadImage(path));

    throw new UnsupportedOperationException("Not implemented : " + path);
  }

  public ShapeObject create(String path) {
    var image = loadImage(path);
    if (image == null) {
      println("Failed to load image : " + path);
      return null;
    }

    return new ShapeObject(image);
  }

  public String getShapePath(CharacterType type, CharacterPoseType pose) {
    if (!(type instanceof CharacterType) || !(pose instanceof CharacterPoseType))
      throw new UnsupportedOperationException("Not implemented : " + type + " " + pose);
    
    //boolean useSvg = false;
    //String prefix = "res/images/objects/" + (useSvg ? "svg/" : "png/");
    String prefix = "res/images/character/";
    String extension = ".png";
    //String extension = useSvg ? ".svg" : ".png";
    
    return prefix + type.name + "_" + pose.name + extension;
  }
}

public class ShapeObject extends Drawable {
  private PShape shape;
  private PImage image;

  public ShapeObject(PShape shape) {
    super(0, 0, shape.width, shape.height);
    this.shape = shape;
    this.scale = new PVector(1, 1, 1);
  }

  public ShapeObject(PImage image) {
    super(0, 0, image.width, image.height);
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
    shape(shape, x, y, w, h);

    popStyle();
  }

  private void drawImage() {
    pushStyle();
    
    imageMode(CENTER);
    rotate(zAngle);

    if (scale.x < 0) {
      pushMatrix();
      translate(x, y); 
      scale(-1, 1);
      image(image, 0, 0, w, h);
      popMatrix();
    } else {
      image(image, x, y, w, h);
    }
    
    popStyle();
  }
}
