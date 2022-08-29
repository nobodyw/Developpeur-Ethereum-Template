// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

contract SelfWhiteList{

    address[] public arrayWhitelist;

    function whitelist(address user) public{
        arrayWhitelist.push(user);
    }

    function check() public view returns (bool boolean){
        for(uint i = 0; i < arrayWhitelist.length; i++){
            if(arrayWhitelist[i] == msg.sender){
                return true;
            }
        }
        return false;
    }
}