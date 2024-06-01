# MyToken Smart Contract

## Overview

This smart contract, written in Solidity, defines a simple ERC-20-like token called "**A_Crypto**" with the abbreviation "**ACT**". The contract includes functionalities to mint new tokens and burn existing tokens, while maintaining the balance of each address.

## Features

1. **Public Variables**: 
    - `tokenName`: Name of the token.
    - `tokenAbbrv`: Abbreviation of the token.
    - `totalSupply`: Total supply of the token.

2. **Mapping**:
    - `balances`: A mapping from addresses to their respective balances.

3. **Mint Function**:
    - `mint(address _address, uint _value)`: Increases the total supply by the specified value and updates the balance of the given address.

4. **Burn Function**:
    - `burn(address _address, uint _value)`: Decreases the total supply by the specified value and updates the balance of the given address, with a check to ensure the address has sufficient balance.

5. **Balance Function**:
    - `myBalance(address _address)`: Returns the balance of the given address.

## Functions

### Public Variables

- `string public tokenName`: Stores the name of the token.
- `string public tokenAbbrv`: Stores the abbreviation of the token.
- `uint public totalSupply`: Stores the total supply of the token.

### Mapping

- `mapping (address => uint) balances`: Maps addresses to their balances.

### Mint Function

```solidity
function mint(address _address, uint _value) public {
    totalSupply += _value;
    balances[_address] += _value;
}
```
- `Parameters`:

    - `_address`: The address to which the tokens will be minted.
    - `_value`: The number of tokens to mint.

- `Functionality`:

    - Increases the total supply of tokens by the specified value.
    - Increases the balance of the specified address by the specified value.

### Burn Function

```solidity
function burn(address _address, uint _value) public {
    require(balances[_address] >= _value, "Insufficient balance. Please check your balance.");
    totalSupply -= _value;
    balances[_address] -= _value;
}
```
- `Parameters`:

    - `_address`: The address from which the tokens will be burned.
    - `_value`: The number of tokens to burn.

- Functionality:

    - Checks if the specified address has enough balance to burn the specified number of tokens.
    - Decreases the total supply of tokens by the specified value.
    - Decreases the balance of the specified address by the specified value.    

### Balance function

```solidity
function myBalance(address _address) view public returns(uint) {
    return balances[_address];
}
```
- `Parameters`:

    - `_address`: The address whose balance is to be returned.

- Functionality:

    - Returns the balance of the specified address.

## Usage

1. **Deploying the Contract:**
    - Deploy the contract using a Solidity-compatible environment such as Remix, Truffle, or Hardhat.

2. **Minting Tokens:**
    - Call the mint function with the desired address and token amount to mint new tokens.

3. **Burning Tokens:**
    - Call the burn function with the desired address and token amount to burn tokens.

4. **Checking Balance:**
    - Call the myBalance function with the desired address to check the balance of that address. 

## License
This project is licensed under the UNLICENSED License.