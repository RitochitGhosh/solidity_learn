// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mapping {
    mapping(string => uint256) public peoples;

    function get(string memory __name) public view returns (uint256) {
        return peoples[__name];
    }

    function set(string memory __name, uint256 __age) public {
        peoples[__name] = __age;
    }

    function remove(string memory _name) public {
        delete peoples[_name];
    }
}