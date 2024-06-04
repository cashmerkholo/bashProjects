#!/bin/bash
echo   "--------------"
echo "------------------"
echo "by : cashmer Kholo"
echo "------------------"
echo   "--------------"

echo "**************************************************************"
echo "This script will get you all the hosts on your local network "
echo "**************************************************************"
for ip in $(seq 1 254); do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done 


