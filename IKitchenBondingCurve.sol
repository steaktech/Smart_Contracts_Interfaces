// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IKitchenBondingCurve {
    function buyTokenFor(address token, address buyer) external payable;
    function sellTokenFor(address token, address seller, uint256 amount) external;

    // --- NEW: slippage-protected paths ---
    function buyTokenForWithMinOut(address token, address buyer, uint256 minTokensOut) external payable;
    function sellTokenForWithMinOut(address token, address seller, uint256 amount, uint256 minEthOut) external;

    // Called by Graduation to pull ETH from curve when cap is reached
    function releaseGraduationETH(address token, address receiver, uint256 amount) external;

    // Dynamic stipend based on holder count
    function getDynamicStipend(uint256 holderCount) external view returns (uint256);
}
