// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "../Core/ERC20.sol";
import "../Extensions/ERC20Burnable.sol";
import "../Extensions/ERC20Ownable.sol";

// 소각 - 오너만 가능
contract MainToken is ERC20Burnable, ERC20Ownable  {
  
  constructor (
    string memory name, 
    string memory symbol,
    uint256 totalSupply
  ) ERC20(name, symbol, totalSupply) public {}

  function burn(uint256 amount) public override onlyOwner {
    super.burn(amount);
  }
}