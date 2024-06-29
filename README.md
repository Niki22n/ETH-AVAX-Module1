# ETH-AVAX-Module1
The AccountBalances smart contract manages account balances for Ethereum addresses. It allows users to add funds, withdraw funds, and check their account balance. The contract is implemented in Solidity version 0.8.0.

# Prerequisites
Solidity ^0.8.0

Features
Mapping: Utilizes a mapping (account) to store balances for each Ethereum address.
Functions:
add(uint _val): Allows users to add funds to their account.
withdraw(uint _val): Enables users to withdraw funds from their account, provided they have sufficient balance.
checkBalance(): Retrieves the current balance of the caller's account.

# code 
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AccountBalances{
    // mapping variable here
    mapping(address => uint) public account;

    function add(uint _val) public payable {
        require(_val > 0, "value of amount must be greater than zero");
        account[msg.sender] += _val;
    }

    // Function to withdraw funds
    function withdraw(uint _val) public {
        require(_val <= account[msg.sender], "withdraw amount is greater than balance amount");
        account[msg.sender] -= _val;
    }

    // Function to check the balance
    function checkBalance() public view returns (uint) {
        if(account[msg.sender] <= 0){
             revert("balance is less than or equal to zero");
        }
        assert(account[msg.sender] >= 0); 
        return account[msg.sender];
    }
}

# License
This contract is using the MIT License.

# Author 
Nikita 
