// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {DataSphereProcotol} from "../src/DataSphereProcotol.sol";
    
contract DataSphereProcotolScript is Script {
    function setUp() public {}

    function run() public {
        DataSphereProcotol dataSphereProcotol;

        vm.startBroadcast(0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80);

            dataSphereProcotol = new DataSphereProcotol();

            console2.log("ADDRESS: ", address(dataSphereProcotol));

        vm.stopBroadcast();
    }
}


// forge script script/DataSphereProcotol.s.sol:DataSphereProcotolScript \
// --rpc-url "http://127.0.0.1:8545" \
// --broadcast
