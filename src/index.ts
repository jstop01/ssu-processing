import p5 from "p5";
import { main } from "./main";
import "./style.css";

new p5((p5Instance) => {
  const p = p5Instance as unknown as p5;
  window.p = p;
  main(p);
}, document.getElementById("app")!);
