// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/*
    The doSomething() function is marked as view, meaning it:

    - Does not modify state (no writes to storage/blockchain).
    - Reads only (state variables, block data, etc.).
    - Executed locally by nodes (not mined), so no gas cost when called externally.
*/
contract Variables {
    // State variables are stored on the blockchain.
    string public text = "Hello";
    uint256 public num = 123;

    function doSomething() public view returns (uint256, uint256, address) {
        // Local variables are not saved to the blockchain.
        uint256 i = 456;

        // Here are some global variables
        uint256 timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of the caller

        return (i, timestamp, sender);
    }
}
