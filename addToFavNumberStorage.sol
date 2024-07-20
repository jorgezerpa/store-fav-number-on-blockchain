// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // setting solidity version
import { FavNumberStorage } from "./favNumberStorage.sol";

contract addToFavNumberStorage is FavNumberStorage {
    
    // adding extra functions
    function sayHello() public pure returns(string memory) {
        return "hello";
    }

    // Overrides
    function addPersonFavNumber(string memory _name, uint256 _favoriteNumber) public override  {
        listOfPeopleFavNumber.push(Person(_favoriteNumber, _name));
        nameToNumber[_name] = _favoriteNumber + 5;
    }
}
