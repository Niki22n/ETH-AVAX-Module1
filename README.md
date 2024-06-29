# ETH-AVAX-Module1
The Marks smart contract manages student marks and calculates grades based on the marks provided. This contract is implemented in Solidity version 0.8.0.

# Prerequisites
Solidity ^0.8.0

# Functions
setMarks(uint _marks):

Allows setting marks for the caller (msg.sender).
Requires _marks to be between 0 and 100 inclusive.
getMarks(address _student) public view returns (uint):

Retrieves the marks stored for a specific _student.
grades() public view returns (string memory):

Calculates grades based on the marks of the caller (msg.sender).
Ensures marks are between 0 and 100 using assert and require.
Returns grades ranging from "A+" to "Fail" based on predefined values.


# code 

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Marks {
    mapping(address => uint) private marks;

    function setMarks(uint _marks) public {
        require(_marks >= 0 && _marks <= 100, "Marks must be between 0 and 100");
        marks[msg.sender] = _marks;
    }

    function getMarks(address _student) public view returns (uint) {
        return marks[_student];
    }

    function grades() public view returns (string memory) {
        uint _marks = getMarks(msg.sender);
        assert(_marks >= 0 && _marks <= 100);
        require(_marks > 0 && _marks <= 100, "Marks must be between 0 and 100");

    if (_marks > 95) {
        return "A+";
    } else if (_marks > 90) {
        return "A";
    } else if (_marks > 80) {
        return "B+";
    } else if (_marks > 70) {
        return "B";
    } else if (_marks > 60) {
        return "C";
    } else if (_marks > 50) {
        return "D";
    } else if (_marks > 40) {
        return "E";
    } else {
        revert("Student is Failed: Marks are below passing marks");
    }
}
}

# License
This contract is using the MIT License.

# Author 
Nikita 
