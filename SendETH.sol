// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

contract sendEther {
    constructor() payable {}

    receive() external payable{}
    //3 ways to send the ether.most efficent ways to send the ether is sendViaCall.
    function sendViaTransfer(address payable _to) external payable {
        _to.transfer(123);
    }
    function sendViaSend(address payable _to) external payable {
        bool sent = _to.send(123);
        require(sent,"send FAILED");
    }
    function sendViaCall(address payable _to) external payable{
        (bool success, ) = _to.call{value:123}("");
        require(success,"Failed Call");
    }
}

contract EthReceiver{
    event Log(uint amount, uint gas);

    receive() external payable{
        emit Log(msg.value, gasleft());
    }
}