// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

//payble keyword is the function is used to send or receive  the ethereum.
contract Paybale{
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
    }

    function deposit() external {}

    function getBalance() external view returns(uint){
        return address(this).balance;
    }
}