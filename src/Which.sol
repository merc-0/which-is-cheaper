// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.7;

contract Which {
    uint256[] public s_playerFunds;
    uint256 public s_totalFunds;
    constructor() {
        s_playerFunds = [1, 15, 22, 199, 234, 5, 234, 5, 2345, 234, 555, 23424, 55];
    }

    function a() public {
        uint256 totalFunds;
        uint256 arrayLen = s_playerFunds.length;
        for (uint256 i = 0; i < arrayLen; i++) {
            totalFunds = totalFunds + s_playerFunds[i];
        }
        s_totalFunds = totalFunds;
    }

    function b() public {
        uint256 totalFunds;
        uint256[] memory playerFunds = s_playerFunds;
        uint256 arrayLen = s_playerFunds.length;
        for (uint256 i = 0; i < arrayLen; i++) {
            totalFunds = totalFunds + playerFunds[i];
        }
        s_totalFunds = totalFunds;
    }
}
