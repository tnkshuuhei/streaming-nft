// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {Script} from "lib/forge-std/src/Script.sol";
import {PureSuperToken} from "../src/PureSuperToken.sol";

contract DeployPureSuperToken is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        address factory = 0xfcF0489488397332579f35b0F711BE570Da0E8f5;

        PureSuperToken token = new PureSuperToken();
        token.initialize(factory, "Super Pure Token", "SPT", 0xc3593524E2744E547f013E17E6b0776Bc27Fc614, 1000 ether);

        vm.stopBroadcast();
    }
}
