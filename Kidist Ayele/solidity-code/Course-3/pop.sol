// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract StackClub {
    address[] members;

    constructor() {
        members.push(msg.sender);
    }

    function addMember(address _member) external {
        require(isMember(msg.sender), "Must be a member to add others");
        members.push(_member);
    }

    function removeLastMember() external {
        require(isMember(msg.sender), "Must be a member to remove others");
        members.pop();
    }

    function isMember(address _member) public view returns (bool) {
        for (uint i = 0; i < members.length; i++) {
            if (members[i] == _member) {
                return true;
            }
        }
        return false;
    }
}