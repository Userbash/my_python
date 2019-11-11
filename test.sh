#!/bin/bash

test(){
 . env_per
num(){  
  for d in $rp $rp; do k=$(echo $d | awk {'print$1'} | tail -n1); if [ -z $k ] || [ $k -eq 0 ]; then return; else echo ""; fi; done   
}

backup(){
   . env_per
     if [ -d $HOME/tmp ]
       then 
         if [ -z  fin ]
            then
             return
         else     
             dir=$(if [ -d $PATCH ]; then . env_copy; else return; fi) 
             if [ -d  $HOME/tmp ]; then return; else $dir; fi 
          fi 
    else
        mkdir $HOME/tmp
         if backup; then echo "return funcion backup"; fi
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

if $PATCH; then test; fi 