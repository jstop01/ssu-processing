import { BaseScene } from "./BaseScene";

class Scenes {
  // p5.js 컨버팅시 최대한 문제 발생을 억제하기 위해 Reflection등 java 만의 기능은 사용하지 않는다.
  // 그러므로, 아래와 같이 모든 Scene을 하드코딩한다.
  public sceneNumbers: number[] = [
    101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114,

    201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215,
    216, 217, 218, 219, 220, 221, 222,

    301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315,
    316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330,
  ];

  // TODO: 아직 임의 숫자
  public introductionSceneNumbers: number[] = [
    101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114,
  ];

  // TODO: 아직 임의 숫자
  public deploymentSceneNumbers: number[] = [
    201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215,
    216, 217, 218, 219, 220, 221, 222,
  ];

  // TODO: 아직 임의 숫자
  public endingSceneNumbers: number[] = [
    301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315,
    316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330,
  ];

  public getSceneNames(): string[] {
    const result: string[] = [];
    for (let i = 0; i < this.sceneNumbers.length; i++) {
      result[i] = "Scene_" + this.sceneNumbers[i];
    }

    return result;
  }

  public createScene(sceneNumber: number): BaseScene {
    const found = this.sceneNumbers.some((item) => item === sceneNumber);

    if (!found) {
      throw new Error("Invalid scene number: " + sceneNumber);
    }

    switch (sceneNumber) {
      case 101:
      // return new Scene_101();
      case 102:
      // return new Scene_102();
      case 103:
      // return new Scene_103();
      case 104:
      // return new Scene_104();
      case 105:
      // return new Scene_105();
      case 106:
      // return new Scene_106();
      case 107:
      // return new Scene_107();
      case 108:
      // return new Scene_108();
      case 109:
      // return new Scene_109();
      case 110:
      // return new Scene_110();
      case 111:
      // return new Scene_111();
      case 112:
      // return new Scene_112();
      case 113:
      // return new Scene_113();
      case 114:
      // return new Scene_114();

      case 201:
      // return new Scene_201();
      case 202:
      // return new Scene_202();
      case 203:
      // return new Scene_203();
      case 204:
      // return new Scene_204();
      case 205:
      // return new Scene_205();
      case 206:
      // return new Scene_206();
      case 207:
      // return new Scene_207();
      case 208:
      // return new Scene_208();
      case 209:
      // return new Scene_209();
      case 210:
      // return new Scene_210();
      case 211:
      // return new Scene_211();
      case 212:
      // return new Scene_212();
      case 213:
      // return new Scene_213();
      case 214:
      // return new Scene_214();
      case 215:
      // return new Scene_215();
      case 216:
      // return new Scene_216();
      case 217:
      // return new Scene_217();
      case 218:
      // return new Scene_218();
      case 219:
      // return new Scene_219();
      case 220:
      // return new Scene_220();
      case 221:
      // return new Scene_221();
      case 222:
      // return new Scene_222();

      case 301:
      // return new Scene_301();
      case 302:
      // return new Scene_302();
      case 303:
      // return new Scene_303();
      case 304:
      // return new Scene_304();
      case 305:
      // return new Scene_305();
      case 306:
      // return new Scene_306();
      case 307:
      // return new Scene_307();
      case 308:
      // return new Scene_308();
      case 309:
      // return new Scene_309();
      case 310:
      // return new Scene_310();
      case 311:
      // return new Scene_311();
      case 312:
      // return new Scene_312();
      case 313:
      // return new Scene_313();
      case 314:
      // return new Scene_314();
      case 315:
      // return new Scene_315();
      case 316:
      // return new Scene_316();
      case 317:
      // return new Scene_317();
      case 318:
      // return new Scene_318();
      case 319:
      // return new Scene_319();
      case 320:
      // return new Scene_320();
      case 321:
      // return new Scene_321();
      case 322:
      // return new Scene_322();
      case 323:
      // return new Scene_323();
      case 324:
      // return new Scene_324();
      case 325:
      // return new Scene_325();
      case 326:
      // return new Scene_326();
      case 327:
      // return new Scene_327();
      case 328:
      // return new Scene_328();
      case 329:
      // return new Scene_329();
      case 330:
      // return new Scene_330();

      default:
        throw new Error("Not handled scene number : " + sceneNumber);
    }
  }
}

export const scenes = new Scenes();
