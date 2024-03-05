// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";
import {NFT} from "src/NFT.sol";
import {deployNFT} from "script/deployNFT.s.sol";

contract NFTtest is Test{
    deployNFT public deployer;
    NFT public nft;
    
   function setUp() public{
    deployer = new deployNFT();
    nft = deployer.run();
   }
   
   function TestName() public view  {
    string memory actualname = "Romi";
    string memory expectedname = nft.name();
    assert(keccak256(abi.encodePacked(actualname)) == keccak256(abi.encodePacked(expectedname)));
   }

  
}