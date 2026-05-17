// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
    /**
     * @dev Calculates the sum of a fixed-size array of 5 unsigned integers.
     * @param numbers A fixed-size array containing 5 uints.
     * @return The total sum of the elements in the array.
     */
    function sum(uint[5] calldata numbers) external pure returns (uint) {
        uint total = 0;

        // Iterate through the array using a for loop
        for (uint i = 0; i < 5; i++) {
            total += numbers[i];
        }

        return total;
    }
}