// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

contract Calculatrice{
    function addition(uint _a, uint _b) public pure returns(uint){
        return _a + _b;
    }

    function soustraction(uint _a, uint _b) public pure returns(uint){
        return _a - _b;
    }

    function multiplication(uint _a, uint _b) public pure returns(uint){
        return _a * _b;
    }

    function division(uint _a, uint _b) public pure returns(uint){
        return _a / _b;
    }

}