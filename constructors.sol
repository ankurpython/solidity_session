// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract Constructor {
    address public owner_myAddress;
    uint public x;

    //  Constructor 

    constructor(uint _x){
        owner_myAddress = msg.sender;
        x = _x;
    }
}