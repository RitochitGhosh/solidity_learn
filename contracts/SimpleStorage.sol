// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.26 and less than 0.9.0
pragma solidity ^0.8.26;

contract SimpleStorage {
    // default visibility is 'internal'
    uint256 public favouriteNumber;

    struct People {
        uint256 favouriteNumber;
        string name;
    }

    People public person = People({favouriteNumber: 2, name: "Ritochit"});
    People[] public people;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        People memory newPerson = People(_favouriteNumber, _name);
        people.push(newPerson);
    }
}

// 0xd9145CCE52D386f254917e481eB44e9943F39138