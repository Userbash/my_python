#!/bin/bash

test(){
 . env_per

backup(){
   . env_per
     if [ -d $HOME/tmp ]
       then 
         if  [ -z  fin ]
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