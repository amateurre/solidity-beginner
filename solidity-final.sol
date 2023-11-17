
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    string public name;
    string public symbol;
    uint256 public totalSupply;

    //maps the balance of the address
    mapping(address => uint256) public balances;

    //creates new type token
    constructor(string memory _name, string memory _symbol, uint256 _totalSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _totalSupply;
        balances[msg.sender] = _totalSupply;
    }

    //mints tokens
    function mint(address account, uint256 value) public {
        totalSupply += value;
        balances[account] += value;
    }

    //burns tokens
    function burn(address account, uint256 value) public {
        require(balances[account] >= value, "Insufficient balance to burn");
        totalSupply -= value;
        balances[account] -= value;
    }
}
