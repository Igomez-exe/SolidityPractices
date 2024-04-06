// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Manager{

    struct User {
        uint age;
        string name;
        string gender;
    }

    mapping (address => User) private userList;

    function register(uint age, string memory name, string memory gender) public {
        //msg.sender -> person-blockchain
        User storage _user = userList[msg.sender];

        _user.age = age;
        _user.name = name;
        _user.gender = gender;
    } 


    function consult () public view returns (User memory){
        return userList[msg.sender];
    }

    function _delete ()public{
        delete userList[msg.sender];
    }
}