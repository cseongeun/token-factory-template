// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "../Core/ERC20.sol";
import "../Extensions/ERC20Mintable.sol";
import "../Extensions/ERC20Ownable.sol";

// 발행 - 오너 만 가능
contract MainToken is ERC20Mintable, ERC20Ownable  {
  
  constructor (
    string memory name, 
    string memory symbol,
    uint256 totalSupply
  ) ERC20(name, symbol, totalSupply) public {}

  function mint(uint256 amount) public override onlyOwner {
    super.mint(amount);
  }
}