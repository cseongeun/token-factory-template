// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "../Core/ERC20.sol";

// Basic ERC20
contract MainToken is ERC20 {
  
  constructor (
    string memory name, 
    string memory symbol,
    uint256 totalSupply
  ) ERC20(name, symbol, totalSupply) public {}
}