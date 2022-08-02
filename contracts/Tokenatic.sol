// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Tokenatic is ERC20 {
    constructor() ERC20("Tokenatic", "TNT") {
        _mint(msg.sender, 1000000 * (10**2));
    }

    function decimals() public view virtual override returns (uint8) {
        return 2;
    }

    uint256 tranctionCount = 0;

    event TransferBlock(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);

    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions;

    function addToBlockChain(address payable receiver, uint amount, string memory message,string memory keyword) public {
        tranctionCount += 1;
        transactions.push(
            TransferStruct(
                msg.sender,
                receiver,
                amount,
                message,
                block.timestamp,
                keyword
            )
        );

        emit TransferBlock(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }
    function getAllTransactions() public view returns(TransferStruct[] memory) {
        return transactions;
    }
    function getTransactionCount() public view returns(uint256) {
        return tranctionCount;
    }
}