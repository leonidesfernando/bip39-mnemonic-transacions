// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract TAFBank {
	mapping (address => uint256) balances;

	event Transfer(address indexed _from, address indexed _to, uint256 _value);

	constructor() {}

	function setBalance(address account, uint256 amount) public payable{
		balances[account] += amount;
	}

	function transfer(address payable sender, address payable receiver, uint256 amount) public payable{
		require(amount <= balances[sender], "Insufficient balance");
		balances[sender] -= amount;
		balances[receiver] += amount;
		emit Transfer(sender, receiver, amount);
	}

	function getBalance() public view returns(uint256){
		return address(this).balance;
	}
}
