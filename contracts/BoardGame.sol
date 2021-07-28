// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Board Game NFT
 * @dev Play a Simple Boardgame with predisigned NFTs
 */
contract BoardGame {
// pending the definition of each head & eyes part. e.g.: heads has 10 types of heads: head1=blond, head2=bold, etc
    uint256 heads = 10;
    uint256 eyes = 3;
    uint256 headId;
    uint256 eyeId;
    uint256 finalId;
    struct Figure {
        uint figureId;
        bool minted;
    }
    
    uint [] public array;
    Figure[] public figures;
    
    /**
     * @dev Generate an Algorythm to storage several unique IDs representing each part of the NFT Face
     * finalId unique ID to generate the avatar
     */
    
    function generateFigures() public{
        // Generating the combination of avatars using 10 heads & 3 eyes
        for (uint h=0; h < heads; h++){
            for (uint e=0; e < eyes; e++){
                figures.push(Figure(h * 100 + e, false));
            }
        }
    }
    
    function retrievesFigureId(uint _index) public view returns (uint256){
        return figures[_index].figureId;
    }
    
    /**
     * We will user randomnes with Chainlink 
    
    function selector() public view returns (uint256){
        uint mintFaceId = uint(keccak256(abi.encodePacked(msg.sender))) % 1000; // modulus here is to limit the amount of digits generated to the amount of array ids
        // uint arrayId = uint(figures[mintFaceId]);
        if (array[0]){
            
        }
        while( figures[mintFaceId] == 5 ) {
            return mintFaceId;
        }
    }
    **/
}