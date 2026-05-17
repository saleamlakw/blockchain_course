// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Escrow {
    address public depositor;
    address public beneficiary;
    address public arbiter;

    // Define the event here
    event Approved(uint balance);

    constructor(address _arbiter, address _beneficiary) payable {
        arbiter = _arbiter;
        beneficiary = _beneficiary;
        depositor = msg.sender;
    }

    function approve() external {
        require(msg.sender == arbiter, "Only the arbiter can approve the transfer");

        uint balance = address(this).balance;

        (bool success, ) = payable(beneficiary).call{value: balance}("");
        require(success, "Transfer failed.");

        // Emit the event after the successful transfer
        emit Approved(balance);
    }
}