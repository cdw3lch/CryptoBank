# 🏦 CryptoBank – Solidity Smart Contract

A basic Ethereum smart contract that simulates a decentralized banking service. Users can securely deposit and withdraw ETH, check their balance, and the contract owner has additional privileges to view and manage customer accounts.

This project was built as part of the **Smart Contract Mastery: The Complete Solidity Guide** course and serves as a foundation for ongoing learning and development in Solidity and smart contract design.

---

## 🚀 Features

- 🔐 **Secure ETH deposit and withdrawal**
- 👤 **Balance visibility controlled by access**
- 👑 **Owner-only functions for account management**
- 🧱 **Simple, readable code structure — ideal for expansion**

---

## 🧰 Tech Stack

- **Solidity** `^0.8.20`
- **Remix IDE** (initial development)
- **Hardhat** (future expansion planned)
- **Ethereum-compatible testnet** (Rinkeby, Sepolia, etc.)

---

## 📄 Contract Overview

### 🔹 `deposit()`
Allows users to deposit ETH into their own account.

### 🔹 `withdraw(uint256 amount)`
Withdraws ETH from the sender’s balance.

### 🔹 `getBalance(address customer)`
Returns the balance for the caller, only if they request **their own** balance.

### 🔹 `getBalanceOwner(address customer)`
Allows the **owner** to check **any** customer’s balance.

### 🔹 `withdrawOwner(address customer, uint256 amount)`
Allows the **owner** to withdraw funds from a customer account (useful for compliance/escrow functionality).

### 🔹 `receive()`
Accepts plain ETH transfers directly to the contract address.

---

## 📂 Folder Structure

```txt
CryptoBank/
├── contracts/
│   └── Bank.sol          # Main contract
├── README.md             # Project overview and documentation
└── (tests, scripts, and config will be added as project expands)
