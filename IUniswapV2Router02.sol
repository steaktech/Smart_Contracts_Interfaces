// SPDX-License-Identifier: MIT
// Interface v3

pragma solidity ^0.8.20;

interface IUniswapV2Router02 {
    /**
     * @notice Returns the address of the WETH token.
     */
    function WETH() external pure returns (address);

    /**
     * @notice Returns the address of the factory contract.
     */
    function factory() external pure returns (address);

    /**
     * @notice Adds liquidity to a Uniswap V2 pair using ETH and tokens.
     */
    function addLiquidityETH(
        address token,
        uint256 amountTokenDesired,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    ) external payable returns (uint256 amountToken, uint256 amountETH, uint256 liquidity);

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable;

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external;

    function removeLiquidityETH(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountToken, uint256 amountETH);
}
