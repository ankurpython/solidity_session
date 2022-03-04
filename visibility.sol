// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

contract VisibilityBase{
    uint private x = 0;
    uint internal y = 1;
    uint public z = 2;

    function privateFunc() private pure returns (uint){
        return 0;
    
    }
    function internalFunc() internal pure returns(uint){
        return 100;
    }
    function publicFunc() public pure returns (uint){
        return 200;
    }
    
    function externalFunc() external pure returns(uint){
        return 300;
    }
    function example() external view{
        x+y+z;

        privateFunc();
        internalFunc();
        publicFunc();

        //externalFunc();//you can not call external function. 
        //but we can call through this keyword, the gas fee will not much efficent this.externalFunc();
        this.externalFunc();
    }
}