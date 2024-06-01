// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract MyToken {

    string public tokenName = "A_Crypto";
    string public tokenAbbrv = "ACT";
    uint public totalSupply = 0;

    mapping (address => uint) balances;
   
    function mint(address _address, uint _value)public {
      totalSupply += _value;
      balances[_address] += _value;
    }

    function burn(address _address, uint _value) public {
      require(balances[_address] >= _value, "Insufficient balance. Please check your balance.");
      totalSupply -= _value;
      balances[_address] -= _value;
    }

    function myBalance(address _address)view public returns(uint){
        return balances[_address];
    }

}
