FundAfrica
FundAfrica is a decentralized finance (DeFi) protocol designed to empower African SMEs by providing transparent, borderless, and permissionless access to loans. By leveraging the Cardano blockchain, FundAfrica eliminates traditional financial intermediaries, reducing costs and increasing financial inclusion across the continent.

🚀 Key Features
Decentralized Lending: On-chain smart contracts manage loan requests, funding, and repayments.

Cardano Native: Built on the Cardano EUTXO model for superior security and predictability.

Aiken Smart Contracts: Utilizes highly optimized and audited smart contract logic.

Scalable Backend: A robust TypeScript-based infrastructure to handle off-chain data and blockchain synchronization.

🛠️ Tech Stack
Smart Contracts: Aiken

Language: TypeScript

Runtime: Node.js

Blockchain: Cardano (Preprod/Mainnet)

Development Tools: Lucid (for Cardano off-chain), Aiken CLI

📁 Repository Structure
Plaintext
├── fund_africa_backend/  # TypeScript backend services and API
├── validators/           # Aiken smart contract source code (.ak files)
├── lib/                  # Shared libraries and utility functions
├── vendor/               # Aiken dependencies
├── aiken.toml            # Aiken project configuration
└── package.json          # Node.js dependencies and scripts
⚙️ Getting Started
Prerequisites
Aiken CLI installed.

Node.js (v18 or higher) & npm.

A Cardano wallet with testnet funds (for development).

1. Clone the Repository
Bash
git clone https://github.com/justicethinker/fundafrica.git
cd fundafrica
2. Build Smart Contracts
Compile the Aiken validators into Plutus scripts:

Bash
aiken build
3. Setup Backend
Navigate to the backend directory and install dependencies:

Bash
cd fund_africa_backend
npm install
4. Configuration
Create a .env file in the fund_africa_backend directory:

Code snippet
KUPO_URL=your_kupo_endpoint
OGMIOS_URL=your_ogmios_endpoint
BLOCKFROST_API_KEY=your_key
SEED_PHRASE="your recovery phrase here"
🧪 Testing
On-chain Tests
Run the Aiken unit tests for validators:

Bash
aiken check
Backend Tests
Run the TypeScript test suite:

Bash
npm test
🤝 Contributing
We welcome contributions from the community to help improve financial access in Africa.

Fork the Project.

Create your Feature Branch (git checkout -b feature/AmazingFeature).

Commit your Changes (git commit -m 'Add some AmazingFeature').

Push to the Branch (git push origin feature/AmazingFeature).

Open a Pull Request.

📜 License
Distributed under the MIT License. See LICENSE for more information.

Contact: justicethinker2@gmail.com | GitHub
