// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract IterableMapping{
    mapping(address => uint) public balances;
    mapping(address => bool) public inserted;
    address[] public keys;

    function set(address _key,uint _val) external{
        balances[_key] = _val;

        if (!inserted[_key]){
            inserted[_key] = true;
        }

    }
    function getSize() external view returns(uint){
        return keys.length;
    }
    function first() external view returns(uint){
        return balances[keys[0]];

    }
    function last() external view returns(uint){
        return balances[keys[keys.length -1]];

    }
    function get(uint _i) external view returns(uint){
        return balances[keys[_i]];

    }
}