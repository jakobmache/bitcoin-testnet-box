#!/usr/bin/env bash

curl --header "Content-Type:application/json" --request POST --data "{\"id\":\"$1\"}" web:3000/transactions