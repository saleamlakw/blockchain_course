// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    uint public x;

    constructor(uint n) {
        x = n;
    }

     function increment() external {
        x += 1;
    }

    function add(uint n) external view returns (uint) {
        return x + n;
    }
}
