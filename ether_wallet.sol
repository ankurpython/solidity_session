// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

contract Etherwallet{
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
    }
    receive() external payable{}

    function withdraw(uint _amount) payable external {
        require(msg.sender == owner,"Caller is not Owner");
        payable(msg.sender).transfer(_amount);

        //else this wait is also valid
        // (bool sent,) = msg.sender.Caller{value:_amount}("");
        // require(sent, "Failed to send")

    }
    function getBalance() external view returns(uint){
            return address(this).balance;
        }
}
