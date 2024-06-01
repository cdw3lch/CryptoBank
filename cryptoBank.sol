// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Bank {
    mapping(address => uint256) private balances;
    address public owner;

    constructor() payable {
        owner = msg.sender;
        balances[msg.sender] = msg.value;
    }

    function deposit() payable public {
        require(msg.value > 0, "Needs to deposit more than 0");
        balances[msg.sender] += msg.value;
    }

    function getBalance(address customer) view public returns(uint256) {
        require(msg.sender == customer, "You cannot see the balance of other people");
        return balances[customer];
    }

    function getBalanceOwner(address customer) view public returns(uint256) {
        require(msg.sender == owner, "You are not the owner");
        return balances[customer];
    }

    function withdraw(uint256 amount) public {
        require(amount <= balances[msg.sender], "You are withdrawing more than you have");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    function withdrawOwner(address customer, uint256 amount) public {
        require(msg.sender == owner, "You are not the owner");
        require(amount <= balances[customer], "The customer has not enough funds to withdraw");
        balances[customer] -= amount;
        payable(customer).transfer(amount);
    }

    receive() payable external {

    }
}
