// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {

    uint256 favoriteNumber;
    bool favoriteBool;

    struct People{
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    People public  person = People({favoriteNumber: 2, name: "Patrick"});

    function store(uint256 favoriteNumber) private {
         favoriteNumber = favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

function addPerson(string memory _name, uint256 _favoriteNumber) public{
    people.push(People({favoriteNumber: favoriteNumber,  name: _name}));
    nameToFavoriteNumber[_name] = favoriteNumber;
}
}