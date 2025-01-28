// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Day2SolidityExample {
    // State variables
    uint256 public positiveNumber;   // Unsigned integer (uint)
    int256 public signedNumber;      // Signed integer (int)
    bool public isActive;            // Boolean value (bool)
    address public owner;            // Ethereum address (address)

    // Constructor to initialize the variables
    constructor() {
        positiveNumber = 0;   // Initial value for uint
        signedNumber = 0;     // Initial value for int
        isActive = true;      // Initial value for bool
        owner = msg.sender;   // The address that deploys the contract is the owner
    }

    // Function to set a positive number (uint)
    function setPositiveNumber(uint256 _value) public {
        positiveNumber = _value; // Assign the provided value to the state variable
    }

    // Function to set a signed number (int)
    function setSignedNumber(int256 _value) public {
        signedNumber = _value; // Assign the provided value to the state variable
    }

    // Function to toggle the isActive status (bool)
    function toggleActiveStatus() public {
        isActive = !isActive; // Flip the value of isActive
    }

    // Function to get the owner address (address)
    function getOwner() public view returns (address) {
        return owner; // Return the owner address
    }
}
