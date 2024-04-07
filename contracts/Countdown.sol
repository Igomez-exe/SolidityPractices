// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Countdown{

    uint256 private startTime;
    uint256 private gameDuration = 60; //seconds

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
}