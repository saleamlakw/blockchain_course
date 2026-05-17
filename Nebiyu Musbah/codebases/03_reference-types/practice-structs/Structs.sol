// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
    struct Item {
        string name;
        uint price;
    }

    Item[] public items;

    function createItem(string calldata name, uint price) external {
        items.push(Item(name, price));
    }
}
