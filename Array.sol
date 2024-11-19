// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Array {
    // Declare a dynamic array to store strings
    string[] public dynamicArray;

    // Function to add a new string to the dynamic array
    function addToDynamicArray(string memory value) public {
        dynamicArray.push(value); // Add the provided value to the array
    }

    // Function to get the length of the dynamic array
    function getLength() public view returns (uint) {
        return dynamicArray.length; // Return the number of elements in the array
    }

    // Function to retrieve the entire dynamic array
    function getAllElements() public view returns (string[] memory) {
        return dynamicArray; // Return the full array
    }
}
