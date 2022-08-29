// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

contract ALLPrimeNumber{
    uint[] arrayPrime;

    function addPrime(uint nbr) public returns (bool){
        if(nbr == 1)
        return false;

        for(uint i = 2; i < nbr; i++){
            if(nbr % i == 0){
                return false;
            }
        }
        arrayPrime.push(nbr);
        return true;
    }

    function getPrime() public view returns(uint[] memory){
        return arrayPrime;
    }

}