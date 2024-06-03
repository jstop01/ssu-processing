import { DrawManager } from "./DrawManager";
import { AnimationManager } from "./AnimationManager";
import { EffectManager } from "./EffectManager";
import { UiManager } from "./UiManager";
import { BaseAnimation } from "./BaseAnimation";
import { SceneManager } from "./SceneManager";
import { scenes } from "./Scenes";

export abstract class BaseScene {
  public drawManager: DrawManager = new DrawManager();
  public animationManager: AnimationManager = new AnimationManager();
  public effectManager: EffectManager = new EffectManager();
  public uiManager: UiManager = new UiManager();
  private sceneManager: SceneManager = new SceneManager();

  public startAnimation(animation: BaseAnimation): void {
    this.animationManager.startAnimation(animation);
  }

  public stopAnimation(animation: BaseAnimation): void {
    this.animationManager.stopAnimation(animation);
  }

  public clearAnimation(): void {
    this.animationManager.clearAnimation();
  }

  // Called once when the scene is initially created.
  public abstract setup(): void;

  public abstract draw(): void;

  public abstract getNextScene(): number;

  public loadNextScene(doFade: boolean = true): void {
    const sceneNumber: number = this.getNextScene();
    if (sceneNumber !== -1) {
      this.sceneManager.loadScene(scenes.createScene(sceneNumber), doFade);
    } else {
      console.log("다음 씬이 없거나 매핑이 안되어있습니다.");
    }
  }

  public abstract getPreviousScene(): number;

  public loadPreviousScene(): void {
    const sceneNumber: number = this.getPreviousScene();
    if (sceneNumber !== -1) {
      this.sceneManager.loadScene(scenes.createScene(sceneNumber));
    } else {
      console.log("이전 씬이 없거나 매핑이 안되어있습니다.");
    }
  }

  public mousePressed(): void {
    console.log("BaseScene: mousePressed");
  }

  public mouseReleased(): void {
    console.log("BaseScene: mouseReleased");
  }

  public keyPressed(): void {
    console.log("BaseScene: keyPressed");
  }
}
