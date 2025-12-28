// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface ISteakLockers {
    // --- LP Locking ---
    function lock(address token, uint256 amount, uint256 duration, address creator) external payable;

    function extendLock(address token, uint256 extraTime) external;
    function transferLockOwnership(address token, address newOwner) external;
    function withdraw(address token) external;

    // --- Generic ERC20 Locks ---
    function lockERC20(address token, uint256 amount, uint256 duration) external payable;
    function erc20Withdraw(address token, uint256 lockId) external;
    function erc20ExtendLock(address token, uint256 lockId, uint256 extraTime) external;
    function erc20TransferLockOwnership(address token, uint256 lockId, address newOwner) external;

    // --- Vesting Locks ---
    function lockERC20Vesting(
        address token,
        uint256 amount,
        uint256 startTime,
        uint256 initialUnlockDate,
        uint256 releaseInterval,
        uint256 releasePercent
    ) external payable;

    function claimVested(address token, uint256 lockId) external;
    function getReleasableAmount(address token, uint256 lockId) external view returns (uint256);

    // --- Info Getters ---
    function getLockInfo(address token) external view returns (uint256 amount, uint256 unlockTime, address lockOwner);
    function getAllLockedTokens() external view returns (address[] memory);
    function getConfig() external view returns (address _treasury, address _authorizedCaller, address _owner);
}
