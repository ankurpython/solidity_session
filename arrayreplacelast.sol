// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract ArrayReplaceLast{
    uint[] public arr;
    //Deleting an Element creates a gap in the array
    //One Trick to keep the array compact is to
    //move the last element into the place to delete.

    function remove(uint index) public {
        //move the last element into the place to delete.
        arr[index] = arr[arr.length - 1];
        //remove the last element 
        arr.pop();
    }
    function test() public {
        arr = [1,2,3,4];
        remove(1);//[1,4,3]
        assert(arr.length == 3);
        assert(arr[0]==1);
        assert(arr[1]==4);
        assert(arr[2]==3);

        remove(2);//[1,4]
        assert(arr[0]==1);
        assert(arr[1]==4);
        assert(arr.length == 2);

    }
}