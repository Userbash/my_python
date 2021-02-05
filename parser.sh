#!/bin/bash
## join
## version 0.0.2 - fix recursion parameters
##################################################
yn(){
while true; do
    read -p "Blocked ip adress?" yn
    case $yn in
        [Yy]* ) fail2ban-client set css banip $ip2; iptables -A f2b-css -s $ip2 -j REJECT; break;;
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
ip2=$(echo $ip | sort -r | uniq | while read N; do  echo $N |cut -c 2-; done)

if [ -z $ip2 ] && [ -n $ip2 ];then 
 echo "not found ip adress data bases"
   return 0
else
    echo "baned ip yes/no"
    echo "$ip2" 
    yn [$ip2]
fi
}
join

