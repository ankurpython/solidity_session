// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;
 
 contract A {
     function foo() public pure virtual returns (string memory){
         return "A";
     }
     function bar() public pure virtual returns (string memory){
         return "B";
     }
     function baz() public pure returns (string memory){
         return "C";
     }
 }

 contract B is A{
     function foo() public pure override returns (string memory){
         return "override_foo";
     }
     function bar() public pure override returns (string memory){
         return "override_bar";
     }
 }