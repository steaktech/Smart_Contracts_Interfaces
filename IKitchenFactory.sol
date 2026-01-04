// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../KitchenStorage.sol";

    function createBasicToken(BasicParamsBasic calldata b, StaticCurveParams calldata s, address creator)
        external
        payable;

    function createAdvancedToken(
        BasicParamsAdvanced calldata b,
        StaticCurveParams calldata s,
        AdvancedParamsInput calldata a,
        address creator,
        address[4] calldata taxWallets,
        uint8[4] calldata taxSplits
    ) external payable;

    function createBasicTokenStealth(BasicParamsBasic calldata b, StaticCurveParams calldata s, address creator)
        external
        payable;

    function createAdvancedTokenStealth(
        BasicParamsAdvanced calldata b,
        StaticCurveParams calldata s,
        AdvancedParamsInput calldata a,
        address creator,
        address[4] calldata taxWallets,
        uint8[4] calldata taxSplits
    ) external payable;

    function createSuperSimpleToken(
        KitchenStorage.TokenSuperSimple calldata meta,
        uint256 startTime,
        bool isStealth,
        address creator
    ) external payable;

    function createZeroSimpleToken(
        KitchenStorage.TokenZeroSimple calldata meta,
        uint256 startTime,
        bool isStealth,
        address creator
    ) external payable;

    function deployToken(
        string memory name,
        string memory symbol,
        address creator,
        address[4] calldata taxWallets,
        uint8[4] calldata taxSplits,
        bool isTax,
        bool removeHeader,
        uint256 finalTaxRate,
        uint256 maxSupply
    ) external payable returns (address);

    function mintRealToken(address token, address to, uint256 amount) external;
}
