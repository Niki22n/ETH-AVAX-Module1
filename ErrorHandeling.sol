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
