// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract LocalVariables{
    //statevariable
    uint public a;
    bool public b;
    address public myAddress;

    function foo() external {
        uint x = 123;
        bool f = false;
        x += 45;
        f = true;

        //storing the value of state varible through the local variable function foo.
        a = 121;
        b = false;
        myAddress = address(1);
    }
}