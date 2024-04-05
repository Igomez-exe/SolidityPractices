// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Manager{

    struct User {
        uint age;
        string name;
        string gender;
    }

    mapping (address => User) private userList;

    function register(uint age, string memory name, string memory gender, address user) public {
        User storage _user = userList[user];
        _user.age = age;
        _user.name = name;
        _user.gender = gender;
    } 


    function consult (address user ) public view returns (User memory){
        return userList[user];
    }

    function _delete (address user )public{
        delete userList[user];
    }
}