// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract ArrayRemoveShift{
    uint[] public arr;

    function remove(uint _index) public {
        require(_index < arr.length,"Index out of bound");
        for (uint i = _index; i<arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }
        
        arr.pop();
    }

    function test() external {
        arr = [1,2,3,4];
        remove(2);
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr.length == 3);
        arr = [1];
        remove(0);
        assert(arr.length == 0);

    }

}