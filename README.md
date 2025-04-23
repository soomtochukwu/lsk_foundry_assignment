[click here to see deployed foundry smart contract](https://sepolia-blockscout.lisk.com/address/0x91054bc54e68e70df6ad38d8ae8a3dd87c1382b1)

deploy

```bash
forge create --rpc-url $RPC_URL --private-key $PRIVATE_KEY src/Counter.sol:Counter --broadcast
```

<br>
verify

```bash
forge verify-contract --rpc-url $RPC_URL --verifier blockscout --compiler-version 0.8.28 --verifier-url 'https://sepolia-blockscout.lisk.com/api/'   0x91054BC54E68E70Df6AD38D8Ae8a3dd87c1382b1  src/Counter.sol:Counter
```
