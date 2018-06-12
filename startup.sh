#!/usr/bin/env bash

make start
sleep 5
make generate BLOCKS=100
sleep 1

export a1=$(make address1 | tail -n 1)
sleep 0.5
export a2=$(make address2 | tail -n 1)

chmod +x startup.sh
