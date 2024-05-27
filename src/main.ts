import p5 from "p5";
import "./style.css";

new p5((p5Instance) => {
  const p = p5Instance as unknown as p5;

  const x = 100;
  const y = 100;
  p.AUDIO;

  p.setup = function setup() {
    p.createCanvas(1280, 720);
  };

  p.draw = function draw() {
    p.background(0);
    p.fill(205);
    p.rect(x, y, 50, 50);
  };
}, document.getElementById("app")!);
