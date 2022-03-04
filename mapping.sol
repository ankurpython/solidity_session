// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

// contract mappingtest {
//     mapping(address => uint) public myMap;

//     function get(address _addr) public view returns(uint){
//         //mapping is always returns value . if the value was not set, it will return the default value.
//     return myMap[_addr];

//     }
//     function set(address _addr, uint _i) public{
//         myMap[_addr] = _i;

//     }

//     function remove(address _addr) public {
//         //reset the value to the default value
//         delete myMap[_addr];
//     }
    

// }

contract mappping_test{
    mapping (address => mapping(uint => bool)) public nested;

    function get(address _addr1, uint _i) public view returns (bool){
        return nested[_addr1][_i];
    }

    function set(
        address _addr1,
        uint _i,
        bool _boo
    ) public {
        nested[_addr1][_i] = _boo;
    }
    function remove(address _addr1, uint _i) public{
        delete nested[_addr1][_i];
    }
}