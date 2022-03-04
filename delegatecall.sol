// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract TestDelegateCall{
    uint public num;
    address public sender;
    uint public value;

    function SetVar(uint _num) external payable {
        num = 2 * _num;
        sender = msg.sender;
        value = msg.value;
    }
}

contract DelegateCall{
    uint public num;
    address public sender;
    uint public value;

    function SetVar(address _test, uint _num) external payable{
        (bool success, bytes memory data) =  _test.delegatecall(
            abi.encodeWithSelector(TestDelegateCall.SetVar.selector,_num)
        );
        require(success,"Failed ");
    }
}