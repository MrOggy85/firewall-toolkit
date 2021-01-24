#! /bin/bash

if [[ -z $1 ]]; then
        echo "No IP (first param)"
        exit 1
fi

iptables -I DOCKER-USER -s $1 -j REJECT

exit 0
