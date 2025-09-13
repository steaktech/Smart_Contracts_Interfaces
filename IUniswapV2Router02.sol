// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IUniswapV2Router02 {
    /**
     * @notice Returns the address of the WETH token.
     */
    function WETH() external pure returns (address);

    // Returns the canonical WETH token used by the router. Callers use this when
    // deriving pair addresses or building swap paths that end in ETH.

    /**
     * @notice Adds liquidity to a Uniswap V2 pair using ETH and tokens.
     * @dev This is the only method Steakhouse needs for graduation LP setup.
     */
    function addLiquidityETH(
        address token,              // Address of the token being paired with ETH
        uint amountTokenDesired,    // Amount of tokens to add
        uint amountTokenMin,        // Minimum tokens accepted (slippage control)
        uint amountETHMin,          // Minimum ETH accepted (slippage control)
        address to,                 // LP tokens will be sent to this address (e.g., locker or burn)
        uint deadline               // Timestamp deadline for tx to succeed
    ) external payable returns (
        uint amountToken,
        uint amountETH,
        uint liquidity
    );

    // High-level: deposit `amountTokenDesired` and msg.value ETH into the pair.
    // Returns actual token/ETH amounts used and LP token amount minted. This is
    // used at graduation to create the initial liquidity position for the new token.

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external;

    // Performs a token->ETH swap that supports fee-on-transfer tokens.
    // Used by TaxToken implementations to swap accumulated tax tokens to ETH.
     
    function removeLiquidityETH(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
   ) external returns (uint amountToken, uint amountETH);

    // Removes liquidity from a token/WETH pair and returns the underlying
    // token and ETH amounts. Kept for completeness; not always used by Graduation
    // flows but available for LP management.


}
