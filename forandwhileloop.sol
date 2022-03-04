// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract ForAndWhile {
    function loop() pure public  {
        for (uint i = 0; i < 10; i++){
            if(i == 3){
                continue;
            }
            if (i == 5){
                break;
            }
        }
        uint j;
        while (j < 10){
            j++;       
        }
    }
    function sum(uint _n) external pure returns(uint){
        uint result;
        for(uint i = 1; i < _n; i++){
            result += i;
        }
        return result;
    }
}