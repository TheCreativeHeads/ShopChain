pragma solidity 0.5.16;

contract Payment {
    uint256 balanceAmount;
    uint256 depositAmount;

    constructor() public {
        depositAmount = 0;
        balanceAmount = 0;
    }

    function getBalanceAmount() public view returns (uint256) {
        return balanceAmount;
    }

    function getDepositAmount() public view returns (uint256) {
        return depositAmount;
    }

    function addDepositAmount(uint256 amt1) public {
        depositAmount = 0;
        depositAmount = depositAmount + amt1;
        if (depositAmount > 0) balanceAmount = balanceAmount + depositAmount;
    }

    function withdrawBalance(uint256 amt2) public {
        balanceAmount = balanceAmount - amt2;
    }
}
