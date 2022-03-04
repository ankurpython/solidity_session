// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;
//Data Types : Value and Reference

contract ValueTypes{
    bool public b = true;
    
    uint public u = 123; //uint stands for unsigned integer meaning non negative integers. Here we are using the uint256 is alias of uint.
                         // different sizes are avilable 
                         // uint = uint256 0 to 2**256 - 1
                         // uint = uint8   0 to 2**8 - 1 
                         // uint = uint16  0 to 2**16 - 1
    
    // if you want to define the negtive number the you should have to go to the int type. diiferent ranges are below:
    int public i = -123; // int = int256 -2**255 to 2*255 -1
                         // int = int128 -2**127 to 2*127 -1
    
    //check min and max function type of int
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 
                        
}