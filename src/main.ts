import p5 from "p5";
import { Hammer } from "./objects/Hammer";

export const main = (p: p5) => {
  const hammer = new Hammer(250, 100);
  console.log("debug", { hammer });

  p.AUDIO;
  p.setup = function setup() {
    p.createCanvas(1280, 720);
  };
  p.draw = function draw() {
    p.background(0);
    hammer.draw();
  };
};
