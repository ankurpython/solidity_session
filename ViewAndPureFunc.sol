// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

//View function can read the data from Blockchain
// Pure Function cannot read anything from blockchain

contract ViewAndPureFunc {
    uint public num;

    function viewfunc() external view returns(uint){
        return num;
    }
    function purefunc() external pure returns(uint){
        return 1;
    }
    function addtuNum(uint x) external view returns(uint){
        return x+num;//here we are calling the external function i.e num.
    }
    function add(uint x, uint y) external pure returns (uint){
        return x + y;// both function is returning their local functiin which declared in add function this one is part of pure function 
        
    }
}