let bip39 = require('bip39')

const mnemonic = bip39.generateMnemonic();
console.log("The mnemonic phrase:", mnemonic);
