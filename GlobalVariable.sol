// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract GlobalVariable {
    function glovalVar() external view returns(address, uint, uint){
        address sender = msg.sender;// address of the sender 
        uint timestamp = block.timestamp;// current timestamp of block
        uint blockNum = block.number;
        return (sender,timestamp,blockNum);
    }
}