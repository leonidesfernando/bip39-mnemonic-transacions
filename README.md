# Manage Ethereum Accounts and Transactions with a Mnemonic Phrase
This is a simple project to manage Ethereum accounts and transactions using [MetaMask](https://metamask.io/)

## Requirements
- Truffle and Ganache, an account on MetaMask, [Infura](https://app.infura.io/)

## To run
- `truffle complile`
- `truffle migrate --network <network_name>`
    - the project supports: _sepolia_ and _development_
    - if using _development_ network you must start the blockchain network before migrate: `ganache-cli`

- to iteract with contract: `truffle console --network sepolia --log`

### Perfom transfer
On the console from last command
- instanciate the contract: `const instance = await TAFBank.deployed()`
- **optional** check accounts: `const accounts = web3.eth.getAccounts()`
- set balance: `instance.setBalance('account hash', amount)`
- transfer: `await instance.transfer('from_account_hash', 'to_account_hash', amount)`