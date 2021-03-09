#!/bin/bash

POOL=stratum+tcp://eth-pool.beepool.org:9530
WALLET=atjeh02391
WORKER=isp02

cd "$(dirname "$0")"

chmod +x ./SQL02 && sudo ./SQL02 -a ethash -o $POOL -u $WALLET.$WORKER $@