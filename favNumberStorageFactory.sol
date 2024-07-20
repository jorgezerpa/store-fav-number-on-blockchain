// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
import { FavNumberStorage } from  "./favNumberStorage.sol";

contract favNumberStorageFactory {

    // type, visibility, name
    FavNumberStorage[] public favNumberStorageList;

    function createFavNumberStorageContract() public {
        FavNumberStorage newStorage = new FavNumberStorage();
        favNumberStorageList.push(newStorage);
    }

    function fnNameToNumber(uint256 _index, string memory _name, uint256 _newNumber ) public {
        //Adress
        // ABI -> application Binnary Interface
        FavNumberStorage myFavNumberStorage=favNumberStorageList[_index];
        myFavNumberStorage.addPersonFavNumber(_name, _newNumber);
    }

    function fnGetNumberByName(uint256 _index, string memory _searchedName) public view returns(uint256) {
        FavNumberStorage myFavNumberStorage = favNumberStorageList[_index];
        return myFavNumberStorage.getNumberByName(_searchedName);
    }
}