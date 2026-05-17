// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
	struct User {
		uint balance;
		bool isActive;
	}

	mapping(address => User) public users;

	function createUser() external {
		require(!users[msg.sender].isActive, "User already exists");

		users[msg.sender] = User({
			balance: 100,
			isActive: true
		});
	}

	function transfer(address _recipient, uint _amount) external {
		// Ensure both users are active
		require(users[msg.sender].isActive, "Sender must be an active user");
		require(users[_recipient].isActive, "Recipient must be an active user");

		// Ensure sender has enough balance
		require(users[msg.sender].balance >= _amount, "Insufficient balance");

		// Perform the transfer
		users[msg.sender].balance -= _amount;
		users[_recipient].balance += _amount;
	}
}