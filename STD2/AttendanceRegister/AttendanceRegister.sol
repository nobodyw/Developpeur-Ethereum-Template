// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

contract AttendanceRegister{

    address enseignant;
    uint nbrMatricule;
    struct eleve{
        string name;
        uint8 classe;
        uint joinDate;
    }
    mapping(uint => eleve) public Eleves;

    modifier isEnseignant(){
        require(msg.sender == enseignant, "You are not enseignant.");
        _;
    }

    constructor(address _enseignant){
        enseignant = _enseignant;
    }

    function add(string memory _name, uint8 _classe, uint _joinDate) public isEnseignant{
        require(_classe > 0 && _classe <= 12, "Invalid Class");
        eleve memory e = eleve(_name, _classe, _joinDate);
        nbrMatricule++;
        Eleves[nbrMatricule] = e;
        emit Added(_name,_classe,_joinDate);
    }

    event Added(string name, uint8 classe, uint time);
}