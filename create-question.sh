cd src;
touch "A$1.js";
cd ../test;
touch "A$1.test.js";

echo "const { } = require('../src/A$1');

describe('A$1', () => {
  describe('', () => {
    it('', () => {

    });
  });
});" >> "A$1.test.js";

cd ..;
code "./src/A$1.js";
code "./test/A$1.test.js";
