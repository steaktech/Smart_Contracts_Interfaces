// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../KitchenStorage/KitchenStorageCore.sol";

interface IKitchenCreatorSimple {
    function createSuperSimpleToken(
        KitchenStorageCore.TokenSuperSimple calldata meta,
        uint256 startTime,
        bool isStealth,
        address creator
    ) external payable;

    function createZeroSimpleToken(
        KitchenStorageCore.TokenZeroSimple calldata meta,
        uint256 startTime,
        bool isStealth,
        address creator
    ) external payable;

    function syncAuthorizations() external;

    function getConfig() external view returns (address _storageContract, address _treasury, address _owner);
}
