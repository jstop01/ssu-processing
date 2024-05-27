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
  대문2("대문2"),
  돌과풀("돌과풀"),
  무서운나무("무서운나무"),
  반짝1("반짝1"),
  반짝2("반짝2"),
  반짝3("반짝3"),
  초가집("초가집"),
  해("해"),
  밤_나무("밤_나무"),
  밤_숲길1("밤_숲길1"),
  밤_숲길2("밤_숲길2"),
  밤_숲길3("밤_숲길3"),
  밤_숲길4("밤_숲길4"),
  밤_숲길5("밤_숲길5"),
  밤_풀숲("밤_풀숲"),
  집안1("집안1"),
  집안2("집안2"),
  짚신("짚신");

  public final String name;

  private BackgroundType(String name) {
    this.name = name;
  }
}

public enum ObjectPoseType {
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

  public ShapeObject create(String path) {
    var image = loadImage(path);
    if (image == null) {
      println("Failed to load image : " + path);
      return null;
    }

    return new ShapeObject(image);
  }

  public ShapeObject create(BackgroundType type) {
    String path = "res/images/bg/" + type.name + ".png";
      return new ShapeObject(loadImage(path));
  }
  
  public String getShapePath(ObjectType type, ObjectPoseType pose) {
    if (!(type instanceof ObjectType) || !(pose instanceof ObjectPoseType))
      throw new UnsupportedOperationException("Not implemented : " + type + " " + pose);
    
    //boolean useSvg = false;
    //String prefix = "res/images/objects/" + (useSvg ? "svg/" : "png/");
    String prefix = "res/images/objects/";
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
