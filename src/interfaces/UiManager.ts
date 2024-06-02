// class UiManager {
//   public dialogUi: DialogUi;
//   public currentDialogList: Map<string, string>[];
//   public tsvProcessor: TsvProcessor;

//   private constructor() {
//     super();
//     this.tsvProcessor = new TsvProcessor("Data/ScenarioScript.tsv");
//     const s1 = this.tsvProcessor.readTsvFile();

//     this.currentDialogList = [...s1];

//     this.dialogUi = new DialogUi();
//     this.dialogUi.show();
//   }

//   public getDialogDataById(id: string): DialogContent {
//     const data = this.tsvProcessor.getDataById(this.currentDialogList, id);
//     if (data == null) {
//       console.log("No data found for id: " + id);
//       return null;
//     }
//     let text = data.get("comment");
//     let teller = data.get("character");
//     let voice = data.get("voice");
//     if (Util.isNullOrWhitespace(voice) === false) {
//       voice = "res/sound/voice/" + voice + ".mp3";
//     } else {
//       voice = null;
//     }
//     console.log("voice : " + voice);

//     const dialogContent = new DialogContent(id, text, teller, voice);
//     return dialogContent;
//   }

//   public drawing() {
//     this.dialogUi.draw();
//   }

//   public mousePressed() {}

//   public getDialogForScene(scene: BaseScene): DialogContent[] {
//     const className = scene.constructor.name;
//     // Check if the class name starts with "Scene_"
//     if (className.startsWith("Scene_")) {
//       const sceneNumberStr = className.substring(6);
//       // There won't be more than 100 dialogs..
//       const contents: DialogContent[] = [];
//       for (let i = 0; i < 100; ++i) {
//         const id = sceneNumberStr + String.format("%03d", i);
//         const data = this.tsvProcessor.getDataById(this.currentDialogList, id);
//         if (data == null) continue;

//         contents.push(this.getDialogDataById(id));
//       }

//       return contents;
//     } else {
//       return [];
//     }
//   }
// }
