// Objective:
// OpenZppelin Library usage (Easy & standard) way to create a token
// 

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol"; 

contract OurToken is ERC20 {    // Inheritence used here after importing library
    // Token name and symbol
    constructor(uint256 initialSupply) ERC20("OurToken", "OT") {     //ERC20 constructor also used here
    
        // Creating tokens and sending them to an owner
        _mint(msg.sender, initialSupply); 

    }
}