// Objective:
// Manual (Hard) way to create a token
// 1. Tracking transfer of tokens
// 2. Allowing interaction with smart contracts [needs an approve function]

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ManualToken{
    uint256 initialSupply; 
    mapping (address => uint256) public balanceOf; // Keeping track of contract balances
    mapping (address => mapping(address => uint256)) public allowance; // Keeping track of allowances to contracts (personal address => (contract address => amount))

    // 1. Tracking transfer of tokens
    // token transfers (subtract from one address, add to another)
    function transfer(address from, address to, uint256 amount) public{
        balanceOf[from] -= amount;
        balanceOf[to] += amount;
    }

    // 2. Allowing interaction with smart contracts [needs an approve function]
    function transferFrom() public {

    }
}