// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IKitchenDeployer {
    function deployToken(
        string memory name,
        string memory symbol,
        address creator,
        bool isTax,
        bool removeHeader,
        uint256 finalTaxRate,
        uint256 maxSupply
    ) external payable returns (address);

    function mintRealToken(address token, address to, uint256 amount) external;
}