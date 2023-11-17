# MyToken Smart Contract

## Overview

MyToken is a basic ERC-20 compliant token contract implemented in Solidity. It allows for the creation of a new token with a specified name, symbol, and total supply. The contract supports token minting and burning functionalities.

## Contract Details

- **Name:** MyToken
- **Symbol:** MYT
- **Total Supply:** Configurable during contract deployment
  
##Functions:

##Constructor:

The contract constructor initializes the token with the provided name, symbol, and total supply. The total supply is initially assigned to the contract deployer's address.

`Mint:`

The mint function allows for the creation of new tokens and increases the total supply. It is a public function that can be called by anyone.

`Burn:`

The burn function enables the destruction of tokens, reducing the total supply. It checks for a sufficient balance before performing the burning operation.
