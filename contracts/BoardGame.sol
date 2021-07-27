// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Board Game NFT
 * @dev Play a Simple Boardgame with predisigned NFTs
 */
contract BoardGame {

    uint256 heads = 10;
    uint256 eyes = 3;
    uint256 headId;
    uint256 eyeId;
    uint256 finalId;
    uint id = 0; //temporarily used as counter of figures and ID
    struct Figure {
        uint id;
        uint figureId;
    }
    
    Figure[] public figures;
    
    /**
     * @dev Generate an Algorythm to storage several unique IDs representing each part of the NFT Face
     * finalId unique ID to generate the avatar
     */
    
    function generateFigures() public{
        // Generating the combination of avatars using 10 heads & 3 eyes
        for (uint h=0; h < heads; h++){
            for (uint e=0; e < eyes; e++){
                id ++;
                figures.push(Figure(id, h * 100 + e));
            }
        }
    }
    
    function retrievesAlgorythm(uint _index) public view returns (uint256){
        return figures[_index].figureId;
    }
}
