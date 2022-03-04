// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

//paste the address of counter contract from counter_interface.sol contarct address.

interface ICounter{
    function count() external view returns(uint);

    function inc() external;

    function dec() external ;
}

contract CallInterface{

    uint public count;

    function example(address _counter) external {
        ICounter(_counter).inc();
        count = ICounter(_counter).count();
    }
}