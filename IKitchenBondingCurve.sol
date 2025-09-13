// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IKitchenBondingCurve {
    function buyTokenFor(address token, address buyer) external payable;
    function sellTokenFor(address token, address seller, uint256 amount) external;
    function claimAccrued(address token, address caller) external; // UPDATED
    function getAccrued(address token, address payee) external view returns (uint256);
}