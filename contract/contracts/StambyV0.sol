// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

// Import this file to use console.log
import "hardhat/console.sol";

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";


contract StambyV0 is Initializable, UUPSUpgradeable, OwnableUpgradeable {

    uint public version;

    function initialize(uint _version) public initializer {
        version = _version;
        __Ownable_init();
    } 

    function _authorizeUpgrade(address) internal override onlyOwner {}

    function getVersion() external view returns (uint) {
        // Uncomment this line to print a log in your terminal
        console.log("Current stored version is %o", version);

        return version;
    }
}
