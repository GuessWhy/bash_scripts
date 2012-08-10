#!/bin/bash

#sprawdzanie revdns
#np. ./check_ptr.sh 192.168.2
#by GuessWhy

x=1;
while [ $x -le 254 ]; do
	ip=$1.$x
	dig -x $ip | grep PTR
        x=$[x + 1]
done
