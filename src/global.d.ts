import p5 from "p5";
declare global {
  interface Window {
    p: p5;
  }
  var p: p5;
}

declare const p: p5;
