// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {DataSphereProtocol} from "../src/DataSphereProtocol.sol";
    
contract DataSphereProtocolScript is Script {
    function setUp() public {}

    function run() public {
        DataSphereProtocol dataSphereProtocol;

        vm.startBroadcast();

            dataSphereProtocol = new DataSphereProtocol();

            console2.log("ADDRESS: ", address(dataSphereProtocol));

        vm.stopBroadcast();
    }
}