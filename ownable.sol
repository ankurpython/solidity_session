// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract Ownable{
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "NOt Owner");
        _;
    }
    function setOwner(address _newOwner) external onlyOwner{
        require(_newOwner != address(0),"Inavlid Address");
        owner = _newOwner;
    }

    function onlyOwnerCanCallthisfunc() external onlyOwner{
        
    }


}