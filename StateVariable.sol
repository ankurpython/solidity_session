// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract StateVariable {
    uint public myUint = 123;// State variable are store/saved the data into Blockchain. they are declared inside a
                             // contract and outside the function.

    function foo {
        uint notSateVariable = 45;//  Local variable of function foo, after the executing. the variable is gone
    
    }
}