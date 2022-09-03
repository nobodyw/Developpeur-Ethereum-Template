// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

contract Lifecycle{

    enum stage{
        nourisson,
        toutPetit,
        enfant,
        adolescent,
        adulte,
        vieux
    }

    function getStage(uint months) public pure returns (stage){
        if(months > 0 && months <= 12)
            return stage.nourisson;
        else if(months > 12 && months <= 24)
            return stage.toutPetit;
        else if(months > 24 && months <= 155)
            return stage.enfant;
        else if(months > 155 && months <= 228)
            return stage.adolescent;
        else if(months > 228 && months <= 720)
            return stage.adulte;
        else
            return stage.vieux;
    }
}