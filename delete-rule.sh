#! /bin/bash

CHAIN=$1
RULE_NUM=$2

if [[ -z $CHAIN ]]; then
	echo "No Chain specified (first param)"
	exit 1
fi
if [[ -z $RULE_NUM ]]; then
        echo "No Rule Number specified (second param)"
        exit 1
fi


iptables -D $CHAIN $RULE_NUM

echo "Rule number $RULE_NUM in $CHAIN deleted"
exit 0
