// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import '@openzeppelin/contracts/access/Ownable.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract GDBToken is ERC20, Ownable {
    constructor(uint initialSupply) ERC20("GDB Token", "GDB") {
        _mint(msg.sender, initialSupply);
    }

    function mint(uint amount) external onlyOwner {
        _mint(msg.sender, amount);
    }

    function burn(uint amount) external {
        _burn(msg.sender, amount);
    }
} 