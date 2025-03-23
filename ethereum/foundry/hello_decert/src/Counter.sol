// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;
    uint256 public counter;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }

    function setCounter(uint256 newCounter) public {
        counter = newCounter;
    }

    function count() public {
        counter = counter + 1;
    }
}
