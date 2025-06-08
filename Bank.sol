// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract BankContract{
    // Account struct
    struct Account{
        string name;
        uint256 balance;
    }
    //account mapping
    mapping(string => Account) nameToAcc;
    function createAccount(string memory _name) public pure returns(Account memory) {
        return Account({name:_name, balance: 0});
        
    }
    function getBalance(string memory _name) public view returns(uint256){
        return nameToAcc[_name].balance;
    }
    function deposit(string memory _name, uint256 _amount) public {
nameToAcc[_name].balance += _amount;
    }
    function withdraw(string memory _name, uint256 _amount) public returns(string memory) {
if (nameToAcc[_name].balance >= _amount) {
    nameToAcc[_name].balance -= _amount;
return "Withdrawal Completed";
}else return "Insufficient balance";
    }

}