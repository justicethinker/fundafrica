process.removeAllListeners('warning');

import { generatePrivateKey } from "@lucid-evolution/lucid";
try {
  const privateKey = generatePrivateKey();
  console.log({privateKey});
} catch (error) {
  console.error("An error occurred:", error.message);  // Log a custom message
}

