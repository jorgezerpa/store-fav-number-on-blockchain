// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // setting solidity version

// this contract allows us to store our favorite number
// and some other people favorite's number
contract FavNumberStorage {
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeopleFavNumber;

    mapping(string => uint256) public nameToNumber;

// calldata -> Temp. Modif., memory Temp. notModif., storage permanent.NotModif, code, logs, stack 
    function addPersonFavNumber(string memory _name, uint256 _favoriteNumber) public {
        listOfPeopleFavNumber.push(Person(_favoriteNumber, _name));
        nameToNumber[_name] = _favoriteNumber;
    }
    

}
