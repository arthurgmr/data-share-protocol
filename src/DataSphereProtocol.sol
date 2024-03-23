// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DataSphereProtocol is ERC721URIStorage, Ownable {

    uint256 private tokensId;
    uint256 private price = 0.05 ether;

    constructor() ERC721("DataSphereProtocol", "DSP") Ownable(msg.sender) {}

    function mint(address _to, string calldata _uri) public payable {
        require(msg.value >= price, "DSP: value is not enough");

        tokensId++;
        _safeMint(_to, tokensId);
        _setTokenURI(tokensId, _uri);
    }
}