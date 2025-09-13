// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IKitchenDirectLauncher {
    struct DecayConfig {
        uint64 startTax;
        uint64 finalTax;
        uint64 decayStep;
        uint256 decayInterval;
    }

    struct LimitsConfig {
        uint128 startMaxTx;
        uint128 maxTxStep;
        uint128 startMaxWallet;
        uint128 maxWalletStep;
    }

    function deployDirectLaunchManual(
        string memory name,
        string memory symbol,
        uint256 supply,
        address taxWallet,
        address creator,
        DecayConfig memory d,
        LimitsConfig memory l
    ) external returns (address);

    function deployDirectLaunchStealth(
        string memory name,
        string memory symbol,
        uint256 supply,
        address taxWallet,
        uint256 lpPercent,
        address creator,
        DecayConfig memory d,
        LimitsConfig memory l
    ) external payable returns (address);
}