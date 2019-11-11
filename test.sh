#!/bin/bash

HOME=$(echo | awk -v home=$HOME '{print "My home is " home}' |awk {'print$4'});

test(){
  
  dt=$(date -dm |awk '{print$2}')

num(){

 rp=$(($RANDOM %512));
  
  for d in $rp $rp; do k=$(echo $d | awk {'print$1'} | tail -n1); if [ -z $k ] || [ $k -eq 0 ]; then return; else echo ""; fi; done
   
}

list(){
   
   mount -t cifs //192.168.62.100/Users1 -o dom=megaflowers.local,username=operator,pass=Zz123456 $HOME/tmp &&\
   cp -rvf $HOME/tmp/ $PATCH > log &&\
   sleep 300 &&\
   umount -l  $HOME/tmp&&\
   rm -rf $HOME\tmp
}

backup(){
   mkdir $HOME/tmp
   dt=$(date +"%m-%d-%Y");
   sd=$(echo $dt | sed -e 's/\(.*\)-\(.*\)-\(.*\)/\3-\2-\1/')
   fin=$( find $PATCH -type f -newermt 2019-06-01 ! -newermt $sd)
  if [ -z  fin ]
    then
      return
   else   	
       dir=$(if [ -d $PATCH ]; then list; else return; fi) 
        if [ -d  $HOME/tmp ]; then return; else $dir; fi     	
   fi   	
}

mass(){
  files=($dates)
        if [ -z $files ]; then backup; else echo "OK"; exit 0; fi 	
}

  if [ -z $HOME ];
  	 then
  	 	return
  else
  	  if num ; then if dates=$(ls -lsh  $HOME |grep $dt|awk '{print$10}'); then mass;  fi; fi

  fi
}

if PATCH=/media/files; then test; fi 