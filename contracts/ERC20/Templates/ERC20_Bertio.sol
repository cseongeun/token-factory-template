// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "../Core/ERC20.sol";
import "../Extensions/ERC20Burnable.sol";

// 소각 - 누구나 가능
contract MainToken is ERC20Burnable {
  
  constructor (
    string memory name, 
    string memory symbol,
    uint256 totalSupply
  ) ERC20(name, symbol, totalSupply) public {}
}