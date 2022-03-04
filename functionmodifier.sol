// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;
//Function modiifer - reuse the code before and / or after the code
// Basic, inputs, sandwich
contract FunctionModifier {
    bool public paused;
    uint public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }
    //modifier
    modifier WhenNotPaused(){ 
        require(!paused,"Paused");
        _;//mean binidng 
    }
    function inc() external WhenNotPaused {
        count +=1;
    }
    function dec() external WhenNotPaused { 
        count -= 1;
    }
    
    modifier cap(uint _x){
        require(_x < 100,"x>=100");
        _;

    }


    function incBy(uint _x) external WhenNotPaused cap(_x){
        count +=_x;

    }

}