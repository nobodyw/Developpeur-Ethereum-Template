// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

contract TroisEtSept{
    function check(uint _nbr) public pure returns (bool boolean){
        if((_nbr % 3 == 0 || _nbr % 7 == 0) && _nbr > 10)
        return true;

        else
        return false;
    } 
}