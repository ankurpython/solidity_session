// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract Account{
    address public bank;
    address public owner;

    constructor(address _owner) payable  {
        bank = msg.sender;
        owner = _owner;7654321§

    }
}

contract AccountFactory{

    Account[] public accounts;

    function createAccount(address _owner) external payable{
        Account account = new Account{value:111}(_owner);
        accounts.push(account);


    }
}