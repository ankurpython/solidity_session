// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;
//23553 gas 
//21420 gas fee
//Immutable variable will be only intialise once the contract is deployed then you will not able to change.
contract ImmutableFunc{
    address public immutable owner = msg.sender;

    uint x;
    function foo() external {
        require(msg.sender == owner);
        x+=1;
    }
}