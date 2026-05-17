// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
    /**
     * @dev Calculates the sum of a dynamic-size array of unsigned integers.
     * @param numbers A dynamic array of uints.
     * @return The total sum of the elements in the array.
     */
    function sum(uint[] calldata numbers) external pure returns (uint) {
        uint total = 0;

        // Use .length to loop through the dynamically sized array
        for (uint i = 0; i < numbers.length; i++) {
            total += numbers[i];
        }

        return total;
    }
}