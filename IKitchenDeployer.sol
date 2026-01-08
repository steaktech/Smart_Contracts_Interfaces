// SPDX-License-Identifier: MIT
// Interface v3

pragma solidity ^0.8.20;

interface IKitchenDeployer {
    function deployToken(
        string memory name,
        string memory symbol,
        address creator,
        address[4] calldata taxWallets,
        uint8[4] calldata taxSplits,
        bool isTax,
        bool removeHeader,
        uint256 finalTaxRate,
        uint256 maxSupply
    ) external payable returns (address);

    function mintRealToken(address token, address to, uint256 amount) external;
}
