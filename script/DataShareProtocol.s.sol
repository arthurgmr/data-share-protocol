// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {DataShareProtocol} from "../src/DataShareProtocol.sol";
    
contract DataShareProtocolScript is Script {
    function setUp() public {}

    function run() public {
        DataShareProtocol dataShareProtocol;

        vm.startBroadcast(0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80);

            dataShareProtocol = new DataShareProtocol();

            console2.log("ADDRESS: ", address(dataShareProtocol));

        vm.stopBroadcast();
    }
}


// forge script script/DataShareProtocol.s.sol:DataShareProtocol \
// --rpc-url "http://127.0.0.1:8545" \
// --broadcast
