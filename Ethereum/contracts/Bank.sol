// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract Bank {
    address public owner;
    mapping(address => uint) internal balances;
    
    //  Set owner of contract
    constructor() public {
        owner = msg.sender;
    }
    
    function deposit() public payable {
        require(msg.value > 0, "You must deposit more than 0");
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint amount) public {
        require(balances[msg.sender] >= amount, "Account must contain the requested amount");
        balances[msg.sender] -= amount;
        msg.sender.transfer(amount);
    }
    
    function getBalance() public view returns (uint){
        return balances[msg.sender];
    }
    
    
}