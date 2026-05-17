// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Escrow {
    address public depositor;
    address public beneficiary;
    address public arbiter;

    constructor(address _arbiter, address _beneficiary) {
        // The arbiter and beneficiary are passed in as arguments
        arbiter = _arbiter;
        beneficiary = _beneficiary;

        // The depositor is the person deploying the contract
        depositor = msg.sender;
    }
}