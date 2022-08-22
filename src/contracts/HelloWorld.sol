// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract HelloWorld {
  address public owner;
  
  modifier onlyOwner() {
    require(
      msg.sender == owner,
      "This function is restricted to the contract's owner"
    );
    _;
  }
  
  constructor() {
    owner = msg.sender;
  }

  function greet() public restricted returns (string) {
    return "Hello, world";
  }
}
