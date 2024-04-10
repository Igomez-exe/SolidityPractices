// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract CryptoDeposit {

    struct Account {
        uint256 balance;
        bytes10 currency; 
    }

    mapping(address=> mapping(bytes10 => Account)) accounts;

    function deposit(uint256 amount, bytes10 currency) external payable {
        require(msg.value == amount, "Incorrect amount");
        Account storage account = accounts[msg.sender][currency];
        account.balance = account.balance + amount;

        if(account.currency == ""){
            account.currency = currency;
        }
    }

    function balance (bytes10 currency) external view returns(uint256){
        return accounts[msg.sender][currency].balance;
    }

}