// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Counter {
    uint256 count;

    // view, pure functions disallow modification of state
    // Don't spend any gas
    // If a gas calling function calls a view or pure function - only then will it cost gas
    function get() public view returns (uint256) {
        // count += 1; -> // Function cannot be declared as view because this expression (potentially) modifies the state.
        return count;
    }

    function incr() public {
        count += 1;
    }
    
    function decr() public {
        count -= 1;
    }
}

// 0x358AA13c52544ECCEF6B0ADD0f801012ADAD5eE3
// 0x