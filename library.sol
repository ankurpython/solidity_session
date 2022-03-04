// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

//cann't declare state variable inside library

library Math{
    function max(uint x, uint y) external pure returns(uint){
    return x>=y ? x:y;
    }
}
contract Test {
    function test_max(uint x , uint y) external pure returns(uint){
        Math.max(x,y);
    }
}