// SPDX-License-Identifier: Unlicensed

pragma solidity ^0.8.13;
contract additionContract
{
	uint a1 ;
	uint a2 ;

	function getFirst(uint x) public
	{
		a1 = x;
	}

	function getSecond(uint y) public
	{
		a2 = y;
	}

	function addition() view public returns (uint)
	{
		uint res = a1 + a2 ;		
		return res;
	}
}
