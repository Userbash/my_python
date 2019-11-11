#!/bin/bash

test(){
 . env_per

backup(){
   . env_per
     if [ -d $HOME/tmp ]
       then 
          mount -t cifs //$ip/Users1 -o dom=megaflowers.local,username=operator,pass=Zz123456 $HOME/tmp 
         if  [ "$a" -eq "$b" ]
            then
             return
         else    
             dir=$(if [ -d $PATCH ]; then . env_copy; else return; fi) 
             if [ -d  $HOME/tmp ]; then return; else $dir; fi 
          fi 
     else
        mkdir $HOME/tmp 
         if backup; then echo "return func backup"; fi
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
  	  if dates=$(ls -lsh  $HOME |grep $dt|awk '{print$10}'); then mass;  fi

  fi
}

if $PATCH; then test; fi 