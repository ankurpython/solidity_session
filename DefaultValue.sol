// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract DefaultValues {
    bool public b; // default values False
    uint public u;// default value 0
    int public i;// default value 0
    address public a; //default address 0x40(forty zeroes)
    bytes32 public b32;//default value 0x64(sixty four zeroes) 
}

//mapping, struct, enum, fixed sized array