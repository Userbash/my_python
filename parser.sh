#!/bin/bash
## join
## version 0.0.2 - fix recursion parameters
##################################################
yn(){
while true; do
    read -p "Blocked ip adress?" yn
    case $yn in
        [Yy]* ) iptables -A INPUT -s $ip2 -j DROP; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
}

join(){
local ak
local ak1
local ak2
local ak3
read  ak ak1 ak2 ak3 || return 
ip=$(tcpdump -nr badips.log |awk '{print $3}' |grep -oE '[0-9]{1,}\.[0-9]{1,}\.[0-9]{1,}\.[0-9]{1,}' |sort |uniq -c |sort -r |grep $ak |grep $ak1 |grep $ak2 |grep $ak3)
ip2=$(echo $ip | sort -r | uniq | while read N; do  echo $N |sed -e 's/^.//' ; done)

if [ -z $ip2 ] && [ -n $ip2 ];then 
  echo "not found ip adress data bases"
   return 0
else
    echo "baned ip yes/no"
    yn [$ip2]
fi
}
join
