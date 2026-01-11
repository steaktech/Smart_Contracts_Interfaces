// SPDX-License-Identifier: MIT
// Interface v3


pragma solidity ^0.8.20;

interface IKitchenUtils {
    // === Fee configuration ===
    function getTradeFee(address token) external view returns (uint256);
    function getCurrentTax(address token) external view returns (uint256);
    function getFinalTaxRate(address token) external view returns (uint256);

    // === Curve + Price quotes ===
    function getVirtualPrice(address token) external view returns (uint256);
    function virtualPriceAtSupply(address token, uint256 supply) external view returns (uint256);
    function expectedEthPoolAtSupply(address token, uint256 supply) external view returns (uint256);

    // === Limit checks ===
    function isLimitsLifted(address token) external view returns (bool);
    function getCurrentMaxWallet(address token) external view returns (uint256);
    function getCurrentMaxTx(address token) external view returns (uint256);

    // === Utility quoting ===
    function quoteBuy(address token, uint256 ethIn)
        external
        view
        returns (uint256 tokensOut, uint256 effectiveWeiPer1e18);
    function quoteSell(address token, uint256 amount)
        external
        view
        returns (uint256 ethOutNet, uint256 effectiveWeiPer1e18);
}
