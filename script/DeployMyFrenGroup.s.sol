// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

import {Script} from "forge-std/Script.sol";
import {MyFrenGroup} from "../src/MyFrenGroup.sol";

contract DeployMyFrenGroup is Script {
    function run() external returns (MyFrenGroup) {
        vm.startBroadcast();
        MyFrenGroup myFrenGroup = new MyFrenGroup();
        vm.stopBroadcast();
        return myFrenGroup;
    }
}
