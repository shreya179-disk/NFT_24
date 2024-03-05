// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFT is ERC721 {
    uint256 private s_TokenCounter;

    mapping(uint256 => string) public tokenIdtotokenUri;

    constructor() ERC721("MyMOOD", "mood") {
        s_TokenCounter = 0;
    }

    function mintNft(string memory tokenUri) public {
        tokenIdtotokenUri[s_TokenCounter] = tokenUri;
        _safeMint(msg.sender, s_TokenCounter);
        s_TokenCounter++;
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return "ipfs://bafybeigspoaagtwh2s6wtr4m4wmbyppfow2sto7xek6sajwiegvoiazz6e/";
    }
}
