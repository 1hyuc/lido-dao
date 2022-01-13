// SPDX-FileCopyrightText: 2021 Lido <info@lido.fi>

// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.9;

import "@openzeppelin/contracts-4/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts-4/utils/Counters.sol";

contract ERC721OZMock is ERC721 {
    constructor() ERC721("Mock NFT", "mNFT") {}

    function mintToken(uint256 tokenId) public {
        _mint(msg.sender, tokenId);
    }
}