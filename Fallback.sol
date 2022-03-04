// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;
//Fallback Function will be call when the the function is present inside the contract.Fallback function direct send ether.
//let say ether sent to contract, if the msg.data is empty then recieve will exist else fallback function will call.
// if the receive function is exist, yes then receive else No, Fallback() function will call.

contract FallBack{
    fallback() external payable{}

    receive() external payable{}
    
}