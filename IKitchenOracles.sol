// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title IKitchenOracles
/// @notice Interface for KitchenOracles contract (ETH/USD + Gas feeds)
interface IKitchenOracles {
    /// @notice Returns latest ETH/USD price (8 decimals)
    function ethUsd() external view returns (uint256 price, uint256 updatedAt);

    /// @notice Returns current gas price in WEI (converted from gwei feed)
    function gasWei() external view returns (uint256 weiPrice, uint256 updatedAt);
}
