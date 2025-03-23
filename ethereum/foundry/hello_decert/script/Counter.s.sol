// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";// 合约文件在 src 下

contract CounterScript is Script {
    Counter public counter;

    function setUp() public {}

    function run() external {

        // 从环境变量读取私钥
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        address deployer = vm.addr(deployerPrivateKey);

        // 广播交易 
        vm.startBroadcast(deployerPrivateKey);

        Counter counter = new Counter();

        // 部署地址
        console.log("Counter deployed on %s", address(counter));

        vm.stopBroadcast();
    }
}
