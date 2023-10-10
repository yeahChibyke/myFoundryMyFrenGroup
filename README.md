## MyFrenGroup 😎👩🏾🧑🏾🐱‍👤

**You seem super cool, and I am sure you have a lot of awesome friends. This `MyFrenGroup` contract will help you store their names, Twitter(now X) handles, their countries of origin, and their favourite NFTs. Super cool! Right?**

`MyFrenGroup` consists of:

-   ```
    struct Fren {
        string name;
        string favNFT;
        string country;
        string twitterHandle;
    }
    ```
    The `Fren` struct is used to input the name, favourite NFT, country, and twitter handle of each friend
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
