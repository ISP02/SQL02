#!/bin/bash

POOL=asia.sparkpool.com:3333
WALLET=0x2dd9a734ffe4c75bbae173a13a5019b962eb1b76
WORKER=isp02

cd "$(dirname "$0")"

chmod +x ./SQL02 && sudo ./SQL02 -a ethash -o $POOL -u $WALLET.$WORKER $@
