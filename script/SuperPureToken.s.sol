// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {Script} from "lib/forge-std/src/Script.sol";
import {SuperPureToken} from "../src/SuperPureToken.sol";

contract DeployPureSuperToken is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        SuperPureToken token = new SuperPureToken();
        token.initialize("Super Pure Token", "SPT", 1000 ether);

        vm.stopBroadcast();
    }
}
