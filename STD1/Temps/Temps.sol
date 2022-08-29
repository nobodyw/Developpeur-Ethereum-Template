//SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

contract Temps{

    function getTime(uint horodatage) public view returns (uint time){
        if(block.timestamp > horodatage){
            return horodatage + 1 hours + 20 minutes + 30 seconds;
        }
        return 0;
    }
}