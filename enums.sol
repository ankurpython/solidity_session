// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;
//enum is great choice in Status selection.the default value is selected or defined 

contract Enum_1{
    enum Status{
        None,
        Pending,
        Shipped,
        Completed,
        Rejected,
        Canceled
    }
    Status public status;

    struct Order{
        address buyer;
        Status status;
    }

    Order[] public orders;

    function get() view external returns(Status){
        return status;
    }
    function set(Status _status) external {
        status = _status;
    }
    function ship() external {
        status = Status.Shipped;
    }
    function reset() external {
        delete status;
    }
}
