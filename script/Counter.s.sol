// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    Counter public counter;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        counter = new Counter();

        vm.stopBroadcast();
    }
}
/*

forge verify-contract \
  --rpc-url https://rpc.sepolia-api.lisk.com \
  --verifier blockscout --compiler-version 0.8.28\
  --verifier-url 'https://sepolia-blockscout.lisk.com/api/' \
  0x91054BC54E68E70Df6AD38D8Ae8a3dd87c1382b1 \
  src/Counter.sol:Counter 
  
  */

  /* 
 forge create --rpc-url $RPC_URL --private-key $PRIVATE_KEY src/Counter.sol:Counter

   */