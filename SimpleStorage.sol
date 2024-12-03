//SPDX-License-Identifier: MIT
pragma solidity ^0.8.24; // stating our version
 
 contract SimpleStorage {
    //storage variable
    uint256 myFavoriteNumber; // default 0
    // uint256[] listOfFavoriteNumbers;


// creatig type person
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // Dynamic array - it can increase and reduce
    Person[] public listOfPeople;

    // Static array 
    // Person[3] public listOfPeople; // max size of 3

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        Person memory newPerson = Person(_favoriteNumber, _name);
        listOfPeople.push(newPerson);
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    // Person public myFriend = Person(7, "Pat");
    // Person public pat = Person({favoriteNumber: 7, name:"Pat"});
    // Person public mariah = Person({favoriteNumber: 17, name:"Mariah"});

    //in the mapping the default value for all the keys is 0
    mapping(string =>uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual{
        myFavoriteNumber = _favoriteNumber;      
    }

// view -read state, no transaction needed
//"view" - disallowes state modification
//'pure" - disalowes even reading
    function retrieve() public view returns(uint256){
        return  myFavoriteNumber;
    }
 }
// contract SimpleStorage2 {}

// contract SimpleStorage3 {}

// contract SimpleStorage4 {}