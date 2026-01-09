// SPDX-License-Identifier: MIT
// Interface v3

pragma solidity ^0.8.20;

interface IKitchenGraduation {
    function graduateToken(address token, address stipendReceiver) external;
}
