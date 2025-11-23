# Blockchain-based Music Royalties System

This repository presents a decentralized solution for managing music royalties using blockchain technology. The system aims to automate copyright management, track royalty payments, and ensure transparent and tamper-proof transactions among music creators, publishers, and consumers.

## Project Overview

The traditional music royalty system involves multiple intermediaries, lacks transparency, and is prone to disputes over payment distribution. This project leverages Ethereum smart contracts to:

- Register songs and their copyright details.
- Assign and manage ownership shares among different stakeholders.
- Track royalty payments and ensure proper revenue splits based on ownership percentages.
- Allow direct royalty distribution from music consumption/payments.

### Smart Contracts

- [`musicregistry.sol`](https://github.com/ChinmayDesai2005/MusicRoyaltiesBlockchain/blob/main/musicregistry.sol):  
  Handles the registration of songs, links them to copyright owners, and manages data such as ownership splits.

- [`royaltypayment.sol`](https://github.com/ChinmayDesai2005/MusicRoyaltiesBlockchain/blob/main/royaltypayment.sol):  
  Facilitates the distribution of royalty payments to registered owners based on their shares for each track.

For a full technical and conceptual explanation, see the [MusicRoyalties Project PDF](https://github.com/ChinmayDesai2005/MusicRoyaltiesBlockchain/blob/main/MusicRoyalites.pdf).

### Key Features

- Decentralized music registry and royalty ledger.
- Transparent ownership and payment records.
- Automated smart contract-based revenue splits.
- Resistance to tampering and data loss.

## Demo & Presentation

- **Demo Video:** _Coming Soon_
- [**Presentation Slides**](https://docs.google.com/presentation/d/1y1udTM6hfqlsnFnmk6SB_oQ7867IrfbIKs5X16_kXok/edit?usp=sharing)

## Installation & Usage

1. **Clone the Repository:**
   ```sh
   git clone https://github.com/ChinmayDesai2005/MusicRoyaltiesBlockchain.git
   cd MusicRoyaltiesBlockchain
   ```

2. **Install Prerequisites:**
   - [Node.js](https://nodejs.org/), [npm](https://npmjs.com/) for environment setup.
   - [Truffle](https://www.trufflesuite.com/) or [Hardhat](https://hardhat.org/) for Solidity development.
   - [Ganache](https://trufflesuite.com/ganache/) for local blockchain testing (optional).

   ```sh
   npm install -g truffle
   # or
   npm install --save-dev hardhat
   ```

3. **Compile Smart Contracts:**
   ```sh
   truffle compile
   # or for Hardhat:
   npx hardhat compile
   ```

4. **Deploy Contracts Locally:**
   - Start Ganache (if using Truffle):
     ```sh
     ganache-cli
     truffle migrate
     ```
   - Or deploy to a testnet using configuration files.

5. **Testing the Contracts:**
   - Use provided test commands or write your own test scripts to interact with `musicregistry.sol` and `royaltypayment.sol`.

6. **Integration:**
   - Connect your DApp frontend (optional) or use a tool like [Remix IDE](https://remix.ethereum.org/) to manually interact with the smart contracts.

## Queries & Contributions

- For any **queries**, please [raise an issue](https://github.com/ChinmayDesai2005/MusicRoyaltiesBlockchain/issues).
- For **contributions**, feel free to [raise a Pull Request (PR)](https://github.com/ChinmayDesai2005/MusicRoyaltiesBlockchain/pulls).

## Authors

Made By:  
_**Chinmay Desai**_  
D17C | 016 | Batch A  
[chinmaydesai.xyz](https://chinmaydesai.xyz)

---

For more details, refer to [MusicRoyalites.pdf](https://github.com/ChinmayDesai2005/MusicRoyaltiesBlockchain/blob/main/MusicRoyalites.pdf) and the smart contract source files.