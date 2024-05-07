// 화면 후처리 담당.
final PostProcessManager postProcessManager = new PostProcessManager();

public class PostProcessManager {
  ArrayList<PShader> shaders = new ArrayList<PShader>();
  
  public void addShader(PShader s) {
    shaders.add(s);
    // set default parameters
    s.set("resolution", (float)width, (float)height);
  }
  
  public void draw() {
    pushStyle();

    float time = millis() / 1000.0;
    for (PShader s : shaders) {
      println("set shader : " + s);
      s.set("time", time);
      s.set("tex", get());
      filter(s);
    }

    popStyle();
  }
}
