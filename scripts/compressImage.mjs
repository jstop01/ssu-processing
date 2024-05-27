const sharp = require('sharp');

import { globby } from 'zx';


const compressImage = async (filePath) => {
  const outputPath = filePath.replace('/res/', '/compressedRes/');
  console.log({filePath, outputPath});
  sharp(filePath)
    .png({ compressionLevel: 9, adaptiveFiltering: true, force: true })
    .withMetadata()
    .toFile(outputPath, function(err) {
      if (err) {
        console.log(err);
      }
    });
}
  

const main = async () => {
  const files = await globby('./**/*.png');
  for(const file of files) {
    compressImage(`./${file}`);
  }
}

main();

