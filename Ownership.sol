// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Ownership{
    address private  owner;
    string private  secret;
    constructor(){
        owner = msg.sender;
    }
    modifier OnlyOwner(){
        require(msg.sender == owner, "Not the owner");
        _;
    }
    function setSecret(string memory _secret) public OnlyOwner {
        secret = _secret;
    }
    function getSecret() public view returns(string memory) {
        return secret;
    }
}