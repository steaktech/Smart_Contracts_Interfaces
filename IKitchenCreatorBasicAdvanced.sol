// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../KitchenStorage.sol";

interface IKitchenCreatorBasicAdvanced {
    struct BasicParamsBasic {
        string name;
        string symbol;
        uint256 totalSupply;
        KitchenStorage.TokenType tokenType;
        uint256 graduationCap;
        uint256 lpLockDuration;
        bool burnLP;
        uint256 startTime;
        uint256 finalTaxRate;
        bool removeHeader;
    }

    struct BasicParamsAdvanced {
        string name;
        string symbol;
        uint256 totalSupply;
        KitchenStorage.TokenType tokenType;
        uint256 graduationCap;
        uint256 lpLockDuration;
        bool burnLP;
        uint256 startTime;
        uint256 finalTaxRate;
        bool removeHeader;
    }

    struct StaticCurveParams {
        uint256 curveStartingTax;
        uint256 curveTaxDuration;
        uint256 curveMaxWallet;
        uint256 curveMaxWalletDuration;
        uint256 curveMaxTx;
        uint256 curveMaxTxDuration;
    }

    struct AdvancedParamsInput {
        uint256 taxDropStep;
        uint256 taxDropInterval;
        uint256 maxWalletStep;
        uint256 maxWalletInterval;
        uint256 maxTxStep;
        uint256 maxTxInterval;
        uint256 limitRemovalTime;
    }

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
