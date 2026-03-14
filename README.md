# FundAfrica

![Build Status](https://img.shields.io/badge/build-passing-brightgreen)
![Cardano](https://img.shields.io/badge/Cardano-Native-blue)
![Aiken](https://img.shields.io/badge/Aiken-Smart_Contracts-orange)
![TypeScript](https://img.shields.io/badge/TypeScript-Backend-blue)
![License](https://img.shields.io/badge/license-MIT-green)

## About
FundAfrica is a decentralized finance (DeFi) protocol designed to empower African SMEs by providing transparent, borderless, and permissionless access to loans. Built on the Cardano blockchain, it leverages Aiken smart contracts and the EUTXO model to eliminate traditional financial intermediaries, significantly reducing costs and increasing financial inclusion across the continent.

## Features
* **Decentralized Lending:** On-chain smart contracts autonomously manage loan requests, funding, and repayments.
* **Cardano Native:** Built specifically for the Cardano EUTXO model, ensuring superior security, deterministic fees, and predictability.
* **Aiken Smart Contracts:** Utilizes highly optimized, modern, and easily auditable smart contract logic.
* **Scalable Backend:** A robust TypeScript and Node.js-based infrastructure to handle off-chain data, Lucid integrations, and blockchain synchronization.

## Prerequisites
Before running the project, ensure you have the following installed:
* **Aiken CLI** (latest version for compiling smart contracts)
* **Node.js** (v18 or higher) & **npm**
* A Cardano wallet with testnet (Preprod) funds for development

## Installation
Run the following commands to get your development environment set up from scratch:

```bash
# 1. Clone the repository
git clone [https://github.com/justicethinker/fundafrica.git](https://github.com/justicethinker/fundafrica.git)
cd fundafrica

# 2. Build the Aiken Smart Contracts (Compiles validators into Plutus scripts)
aiken build

# 3. Setup the TypeScript Backend
cd fund_africa_backend
npm install

# 4. Configure Environment Variables
# (Create a .env file and add your specific keys)
cat <<EOT >> fund_africa_backend/.env
KUPO_URL=your_kupo_endpoint
OGMIOS_URL=your_ogmios_endpoint
BLOCKFROST_API_KEY=your_key
SEED_PHRASE="your recovery phrase here"
EOT
```

## Usage

### Testing the Smart Contracts
Run the on-chain Aiken unit tests for the validators:
```bash
aiken check
```

### Running the Backend
Execute the TypeScript test suite to verify off-chain logic:
```bash
npm test
```

## Contributing
We welcome contributions to help improve financial access in Africa! Here is how you can help:
1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License
Distributed under the MIT License. See `LICENSE` for more information.

---
**Contact:** justicethinker2@gmail.com | [GitHub](https://github.com/justicethinker)
