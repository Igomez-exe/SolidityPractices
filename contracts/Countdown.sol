// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Countdown{

    uint256 private startTime;
    uint256 private gameDuration = 60; //seconds

    struct Voter {
        uint256 weight;
        bool voted;
    }

    mapping(address=>Voter) private voters;

    constructor(){
        startTime = block.timestamp; //actual block
    }

    function setGameDuration(uint256 time) external{
        gameDuration = time;        
    }

    function getDuration() external view returns(uint256){
        return gameDuration;
    }

    function _restore () external {
        startTime = block.timestamp;
    }

    function timeLeft()public view returns(uint256){
        require(startTime <= block.timestamp, "Time not valid");
        uint256 diff = block.timestamp - startTime;
        uint256 remaining = diff >= gameDuration ? 0 : gameDuration - diff;
        
        return remaining;
    }

    //new functions 

    function getVote () external view returns(Voter memory) {
        return voters[msg.sender];
    }

    function vote (uint256 _weight) external  {
        require(timeLeft() > 0, "Time is over");
        Voter storage voter = voters[msg.sender];
        voter.voted = true;
        voter.weight = _weight;
    }
}