// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DataShareProtocol is ERC721 {

    uint256 private _nextTokenId = 1;

    // Nome e símbolo fixos definidos diretamente aqui
    constructor() ERC721("DataShareProtocol", "DSP") {}

    // Função para criar (mint) um novo token
    function mint(address to) public  returns(bool){
        uint256 currentTokenId = _nextTokenId++;
        _mint(to, currentTokenId);
        return true;
    }

}

// cast send --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --rpc-url "http://127.0.0.1:8545" “0x5FbDB2315678afecb367f032d93F642f64180aa3” “mint(0x70997970C51812dc3A010C7d01b50e0d17dc79C8)()”

