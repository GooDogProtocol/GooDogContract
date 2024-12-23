// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./finance/VestingWalletCliff.sol";

contract GDVestingWallet is VestingWalletCliff {
    constructor(
        address beneficiary,
        uint64 startTimestamp,
        uint64 durationSeconds,
        uint64 cliffSeconds
    ) VestingWallet(beneficiary, startTimestamp, durationSeconds) VestingWalletCliff(cliffSeconds) {}
} 