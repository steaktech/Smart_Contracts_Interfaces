// SPDX-License-Identifier: MIT
// Interface v3

pragma solidity ^0.8.20;

interface IUniswapV2Pair {
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    function token0() external view returns (address);
    function token1() external view returns (address);

    function swap(uint256 amount0Out, uint256 amount1Out, address to, bytes calldata data) external;

    function mint(address to) external returns (uint256 liquidity);
    function burn(address to) external returns (uint256 amount0, uint256 amount1);
}
