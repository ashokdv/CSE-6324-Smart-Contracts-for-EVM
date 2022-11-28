pragma solidity 0.8.13;


contract Pausable {
    bool is_paused;

    function paused() public {
        is_paused = true;
    }

    function resume() public {
        is_paused = false;
    }
}

contract Token is Pausable {
    mapping(address => uint256) public balances;

    constructor() {
        is_paused = true;
    }

    function transfer(address to, uint256 value) public {
        require(!is_paused);

        uint256 initial_balance_from = balances[msg.sender];
        uint256 initial_balance_to = balances[to];

        balances[msg.sender] -= value;
        balances[to] += value;

        assert(balances[msg.sender] <= initial_balance_from);
        assert(balances[to] >= initial_balance_to);
    }
}
