// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Manager{

    mapping (address => string) private userList;

    function register(string memory name, address user) public {
        userList[user] = name;
    } 


    function consult (address user ) public view returns (string memory){
        return userList[user];
    }

    function _delete (address user )public{
        delete userList[user];
    }
}