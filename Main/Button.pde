public class Button {
  public String text;
  public color textColor = #000000;
  public int fontSize = 15;
  // TODO: text font and size
  // Left top of the button 
  public PVector position;
  // Size of the button(rect size)
  public PVector size;
  
  public boolean drawAndCheckClick() {
    pushStyle();
    
    draw();
    
    popStyle();

    return isMouseOver() && mousePressed;
  }
  
  public boolean isMouseOver() {
    return mouseX > position.x && mouseX < position.x + size.x && mouseY > position.y && mouseY < position.y + size.y;
  }
  
  public void draw() {
    setMouseOverStyle(isMouseOver());  
    
    rect(position.x, position.y, size.x, size.y);
    if (text != null) {
      float textX = position.x + size.x / 2;
      float textY = position.y + size.y / 2;
      fill(textColor);
      textSize(fontSize);
      textAlign(CENTER, CENTER);
      text(text, textX, textY);
    }
  }
  
  // Can be overriden in the derived class
  protected void setMouseOverStyle(boolean isOver) {
    if (isOver) {
      strokeWeight(2);
    }
    else {
      strokeWeight(1);
    }
  }
}
