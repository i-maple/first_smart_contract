// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import './SimpleStorage.sol';

// For a funciton to be overridden, the function in the parent class should be a virtual function

contract ExtraStorage is SimpleStorage {
    function store(uint256 _favouriteNumber) public override  {
        favouriteNumber = _favouriteNumber + 5;
    }
}