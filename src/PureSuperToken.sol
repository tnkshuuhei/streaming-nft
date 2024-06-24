// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {BaseToken} from "./BaseToken.sol";
/**
 * @title Native SuperToken custom super token implementation
 * @dev This is a simple implementation where the supply is pre-minted.
 */

contract PureSuperToken is BaseToken {
    function initialize(
        address factory,
        string memory name,
        string memory symbol,
        address receiver,
        uint256 initialSupply
    ) external {
        _initialize(factory, name, symbol);
        _mint(receiver, initialSupply, "");
    }
}
