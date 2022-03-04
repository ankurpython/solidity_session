// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;
///call data has potenital save the gas fee.instead of memory we are using call data.
contract Datalocations{
    struct MyStruct{
        uint foo;
        string text;
    }
    mapping(address => MyStruct) public myStructs;
    function example(uint[] calldata y, string calldata s) external returns(uint[] memory){
        myStructs[msg.sender] = MyStruct({foo:123,text:"Bar"});

        MyStruct storage myStruct = myStructs[msg.sender];
        myStruct.text = "foo";

        MyStruct memory readOnly = myStructs[msg.sender];
        readOnly.foo = 232;
        _internal(y);

        uint[] memory memArr = new uint[](3);
        memArr[0] = 121;
        return memArr;
    }
    function _internal(uint[] calldata y) private{
        uint x = y[0];
    }
}