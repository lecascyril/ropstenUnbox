// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract SimpleStorage {
  uint256 value;
  event dataStored(uint data,address addr);


  function get() public view returns (uint256) {
    return value;
  }

  function set(uint256 newValue) public {
    value = newValue;
    emit dataStored(newValue,msg.sender);

  }
}
