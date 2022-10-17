// SPDX-License-Identifier: Unlicensed

pragma solidity ^0.8.13; 


contract multiplyContract {
 
    int128 a1 ;
    int128 a2 ;
     
    function getFirst(int128 val1) public {
        a1 = val1;
    }
     
    function getSecond(int128 val2) public {
        a2 = val2;
    }
     
    function multiply() view public returns (int128) {
        int128 result = a1 * a2 ;
        return result;
    }
 
}