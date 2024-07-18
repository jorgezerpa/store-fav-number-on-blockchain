// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // setting solidity version

// this contract allows us to store our favorite number
// and some other people favorite's number
contract FavNumberStorage {
    uint256 public favoriteNumber; // default to 0

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        // favoriteNumber = 2; // this is not possible cause is modifying state
        return favoriteNumber + 1;
    }

}
