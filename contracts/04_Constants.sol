// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Constants {
    // coding convention to uppercase constant variables

    // state variables can only be updated by executing a transaction, and transactions always call a function.

    address public constant MY_ADDRESS = 0x8e55Ca85ddF99d2342ed31394D441Cf796FC825d;
    uint256 public constant YEAR = 2026;
    
    uint256 public age = 21;

    function incAge() public returns ( uint256 )  {
        return age += 1;
    }

    function incYEAR() public pure returns ( uint256 )  {
        // return YEAR += 1; -> // TypeError: Cannot assign to a constant variable.
        return YEAR;
    }    
}

/*
    The pure keyword in Solidity indicates that a function:

    1. Does not read or modify state:
        - Cannot access storage variables (e.g., text, num).
        - Cannot use block.timestamp, msg.sender, etc.
    
    2. Only operates on input parameters:
        Example: Math operations, string concatenation.

    3. Gas optimization:
        - Like view, it’s free when called externally (no state changes).


    Feature	            pure	                            view
    State Access	    ❌ No reads or writes	           ✅ Reads allowed (no writes)
    Example	            add(uint a, uint b) → a + b	        getText() → return text;
    Gas Cost	        Free (external call)	            Free (external call)
    Use Case	        Math, input-only logic	            Reading state (e.g., balances)

*/