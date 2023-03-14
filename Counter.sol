// SPDX-License-Identifier: MIT

pragma solidity ^0.8.6;

contract Counter {
    uint private _counter;

    address private _owner;

    constructor() {
         _counter = 0;
        _owner = msg.sender;
    }

    function getCount() public view returns (uint256) {
        return _counter;
    }

    function addCount() public {
        require(msg.sender == _owner, "Only the contract owner can add counters."); 
        _counter ++;
    }

    function setCount(uint256 _num) public {
        require(msg.sender == _owner, "Only the contract owner can add counters."); 
        _counter = _num;
    }
}
