// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

contract SimpleStorage{
    string public text;//input state varibale 

    function set(string calldata _text) external{//input _text
    text = _text;
    }
    function get() external view returns(string memory){
        return text;
    }
}