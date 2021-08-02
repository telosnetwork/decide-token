#! /bin/bash

echo ">>> Building contract..."

# eosio.cdt v1.6.1
# -contract=<string>       - Contract name
# -o=<string>              - Write output to <file>
# -abigen                  - Generate ABI
# -I=<string>              - Add directory to include search path
# -L=<string>              - Add directory to library search path
# -R=<string>              - Add a resource path for inclusion

eosio-cpp -I="./include/eosio.token" -R="./ricardian" -o="./build/eosio.token.wasm" -contract="eosio.token" -abigen ./src/eosio.token.cpp