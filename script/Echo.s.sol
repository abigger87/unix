// SPDX-License-Identifier: Apache-2.0
pragma solidity >=0.8.13 <0.9.0;

import {Unix} from "src/Unix.sol";

import {Script} from "forge-std/Script.sol";
import {console2} from "forge-std/console2.sol";

contract echo is Script {
  using Unix for *;

  function setUp() public {}

  function run() public {
    (uint256 success, bytes memory data) = "echo Hello World".run();
    require(success == 1, "ECHO_CMD_FAILED");
    console2.log(string.concat("\n> Echo: ", string(data)));
  }
}
