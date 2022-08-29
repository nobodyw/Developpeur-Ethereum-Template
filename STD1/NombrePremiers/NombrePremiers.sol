// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

contract NombrePremiers{
    function ifPrime(uint nbr) public pure returns (bool){
        if(nbr == 1)
        return false;

        for(uint i = 2; i < nbr; i++){
            if(nbr % i == 0){
                return false;
            }
        }
        
        return true;
    }
}