// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //Specify version

contract SimpleStorage {
    // Similar to class in OOPs which says that the upcoming code is contract
    // Data types: boolean, uint(whole number that is just positive), int(Whole number which is gonna be a positive or negative whole numbers), address, bytes
    bool hasFavouriteNumber = false;
    uint256 public favouriteNumber; // Uint can be from 8 to 256 in multiples of 8

    //======Default value in solidity is always the null value, eg 0 in integers

    string favouriteNumberInText = "Five";
    int256 favouriteInt = -5; // also negative is accepted
    address myAddress; // Eg address of wallet

    bytes32 favouriteBytes = "cat";

    // Functions in solidity

    struct People {
        uint256 favouriteNumber;
        string name;
    }

    People person = People({favouriteNumber: 2, name: "Patrick"});

    People[] public people;

    // Fixed array can also be created as People[size]

    function store(uint256 _favouriteNumber) public virtual {
        favouriteNumber = _favouriteNumber;
        retreive();
    }

    // If a view function is called inside a function that cost gas, the view function costs gas too

    // view, pure : No gas used in these functions

    // view : read state from a contract, disallow modification of state

    // pure: disallow modification of state, (some specific algo that doesn't need to read storage)

    // -------Basic solidity mapping ----------

    mapping(string => uint256) public nameToFavouriteNumber;

    function retreive() public view returns (uint256) {
        return favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }

    // Data location can be given to array, struct and mappings only

    // Stack, memory, calldata, stotage, code, logs

    // Calldata is temporaty variable that can't be modified

    // Memory is temporary variable that can be modified

    // Storage is permanent variable that can be modified
}
