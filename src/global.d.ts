import p5 from "p5";
declare global {
  interface Window {
    p: p5;
    deltaTime: number;
    updateDeltaTime: () => void;
  }
  var p: p5;
  var deltaTime: number;
  var updateDeltaTime: () => void;
}

declare const p: p5;
