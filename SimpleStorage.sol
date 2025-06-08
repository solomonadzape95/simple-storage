// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26; //stating solidity version

contract SimpleStorage {
    
   uint256 favoriteNumber;// defaults to 0
    // uint256[] listOfFavoriteNumbers;//Array of uint256s
    struct Person{
      uint256 favNumber;
      string name; 
    }

    // adding a number to the square braces shows the lenght of the array
    Person[] public listOfPeople;
    // Person public victor = Person({favNumber : 7, name :"Victor"});
    // Person public grave = Personhg({avNumber : 909, name :"Grace"});

    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }
    //view, pure : keywords for when no transaction is performed. view reads from state storage, while pure does not
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
// listOfPeople.push();
    function addPerson(string memory _name, uint256 _favoriteNumber ) public {
        // Person memory newPerson = Person(_favoriteNumber, _name);
listOfPeople.push( Person(_favoriteNumber, _name));
    }
    //0xd9145CCE52D386f254917e481eB44e9943F39138
}
