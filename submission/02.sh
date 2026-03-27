# Create a native segwit address and get the public key from the address.
ADDRESS=$(bitcoin-cli -regtest getnewaddress "" "bech32")
bitcoin-cli -regtest getaddressinfo "$ADDRESS" | grep -o '"pubkey": "[^"]*"' | sed 's/"pubkey": "//;s/"//'
