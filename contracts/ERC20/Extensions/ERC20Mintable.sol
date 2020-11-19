// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "../GSN/Context.sol";
import "../Core/ERC20.sol";

abstract contract ERC20Mintable is Context, ERC20 {
    /**
     * @dev Mint `amount` tokens from the caller.
     *
     * See {ERC20-_burn}.
     */
    function mint(uint256 amount) public virtual {
        _mint(_msgSender(), amount);
    }

  
}