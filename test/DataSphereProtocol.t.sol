// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {DataSphereProtocol} from "../src/DataSphereProtocol.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";

contract DataSphereProtocolTest is Test, IERC721Receiver {
    DataSphereProtocol dsp;

    function setUp() public {
        dsp = new DataSphereProtocol();
    }

    function testMint() public {
        uint256 price = 0.05 ether;
        address to = address(this);
        string memory uri = "testURI";
        
        dsp.mint{value: price}(to, uri);

        assertTrue(dsp.balanceOf(to) == 1, "The recipient should have 1 token after minting.");
        assertTrue(dsp.ownerOf(1) == to, "The recipient should own token ID 1.");
    }

    function onERC721Received(address, address, uint256, bytes calldata) external pure override returns (bytes4) {
        return IERC721Receiver.onERC721Received.selector;
    }

    receive() external payable {}
}
