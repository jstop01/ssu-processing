public class Button {
  public String text;
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
    return mouseX > position.x && mouseX < position.x + size.x && mouseY > position.y && mouseX < position.y + size.y;
  }
  
  public void draw() {
    rect(position.x, position.y, size.x, size.y);
    if (text != null) {
      float textX = position.x + size.x / 2;
      float textY = position.y + size.y / 2;
      text(text, textX, textY);
    }
  }
}
