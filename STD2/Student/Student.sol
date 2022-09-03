// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

contract Student{

    mapping(uint => string) public eleve;

    function enroll(uint _numberEleve, string memory _nameEleve) public{
        eleve[_numberEleve] = _nameEleve;
        emit addNewStudent(_numberEleve, _nameEleve);
    }

    event addNewStudent(uint numberEleve, string nameEleve);
}