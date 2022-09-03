// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

contract SafeCalculator{
    function add(uint a, uint b) public pure returns(uint){
        uint c = a + b;
        require(c >= a, "variable overflow");
        return c;
    }

    function sub(uint a, uint b) public pure returns(uint){
        require(b <= a, "variable underflow");
        uint c = a - b;
        return c;
    }

    function mul(uint a, uint b) public pure returns(uint){
        uint c = a * b;
        require(c / a == b, "variable overflow");
        return c;
    }

    function div(uint a, uint b) public pure returns(uint){
        uint c = a / b;
        require(b > 0, "invalid operation");
        return c;
    }
}