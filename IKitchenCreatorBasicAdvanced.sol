// SPDX-License-Identifier: MIT
// Interface v3

pragma solidity ^0.8.20;

import "../KitchenStorage.sol";

    function createBasicToken(BasicParamsBasic calldata b, StaticCurveParams calldata s, address creator)
        external
        payable;

    function createBasicTokenStealth(BasicParamsBasic calldata b, StaticCurveParams calldata s, address creator)
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

    function createAdvancedTokenStealth(
        BasicParamsAdvanced calldata b,
        StaticCurveParams calldata s,
        AdvancedParamsInput calldata a,
        address creator,
        address[4] calldata taxWallets,
        uint8[4] calldata taxSplits
    ) external payable;

    function syncAuthorizations() external;
}
