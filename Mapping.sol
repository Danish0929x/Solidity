// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract Mapping {
    mapping(address => uint256) public balances;

    function setBalance(uint256 _amount) public {
        balances[msg.sender] = _amount;
    }

    function getBalance(address _user) public view returns (uint256) {
        return balances[_user];
    }

    // Delete an entry
    function resetBalance(address _user) public {
    delete balances[_user]; // Sets the balance to 0
    }


}
