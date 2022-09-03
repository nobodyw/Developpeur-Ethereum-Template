// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

contract Loyer{
    string public name;
    uint public age;
    string public profession;
    address payable public owner;
    
    constructor(string memory _name, uint _age, string memory _profession){
        name = _name;
        age = _age;
        profession = _profession;
        owner = payable(msg.sender);
    }

    receive() external payable{
        owner.transfer(msg.value);
    }
}