// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

contract PairImpair{
    function check(uint _nbr) public pure returns(string memory){
        if(_nbr % 2 == 0)
        return "Pair !";
        
        else
        return "Impair !";
    }
}