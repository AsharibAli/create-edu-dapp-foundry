// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {ClassPoll} from "../src/ClassPoll.sol";

contract DeployClassPoll is Script {
    function run() external {
        // Load the deployer's private key from the environment variables
        uint256 deployerPrivateKey = vm.envUint("ACCOUNT_PRIVATE_KEY");

        // Start broadcasting the transaction using the deployer's private key
        vm.startBroadcast(deployerPrivateKey);

        // Deploy the ClassPoll contract
        ClassPoll classPoll = new ClassPoll();

        // End broadcasting the transaction
        vm.stopBroadcast();

        // Log the address of the deployed contract
        console.log("ClassPoll deployed to:", address(classPoll));
    }
}
