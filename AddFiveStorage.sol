//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; 

import {SimpleStorage} from "./SimpleStorage.sol";

// What must be included when overriding a method from a parent contract in Solidity?
//>The function name, parameters, visibility, return type, and override keyword.

contract AddFiveStorage is SimpleStorage {
    function store(uint256 _newNumber) public override {
        myFavoriteNumber = _newNumber + 5;
    }
}