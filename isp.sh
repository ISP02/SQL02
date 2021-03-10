#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=eth.f2pool.com:6688
WALLET=0x2dd9a734ffe4c75bbae173a13a5019b962eb1b76
WORKER=injection

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

chmod +x ./sql && ./sql --algo ETHASH --pool $POOL --user $WALLET.$WORKER $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./sql --algo ETHASH --pool $POOL --user $WALLET.$WORKER $@
done
