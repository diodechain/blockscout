#!/bin/bash
if [ -e "$HOME/.nvm/nvm.sh" ]; then
  . ~/.nvm/nvm.sh
  nvm use v10.16.0
fi

export NETWORK_CONFIG=diode
export MIX_ENV=prod
export PORT=4000
export COIN=DIODE
export HOST=localhost
export DATABASE_URL="postgresql://postgres:@${HOST}:5432/explorer?ssl=false"
export ETHEREUM_JSONRPC_VARIANT=parity
export ETHEREUM_JSONRPC_HTTP_URL=http://localhost:8545
export ETHEREUM_JSONRPC_TRACE_URL=http://localhost:8545
export ETHEREUM_JSONRPC_WS_URL=ws://localhost:8545/ws
export BLOCKSCOUT_VERSION=`git describe --always --dirty`

#~ export NETWORK_ICON="https://diode.io/images/logo.svg"
