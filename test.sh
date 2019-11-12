#!/bin/bash

. env_per

start(){
 . env_per

backup(){
   . env_per
     if [ -d $HOME/tmp ]
       then 
          mount -t cifs //$ip/Users1 -o dom=megaflowers.local,username=operator,pass=XXXXXXXXX $HOME/tmp 
         if  [ -z "$fin" ] && [ "$a" -eq "$b" ]
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

test(){

test_mount(){
   
   if [  -z $mount_f ] || [ -n $mount_f ]
       then
         echo "Start backup"
         start
   else
         echo "Unmount remote server"
         umount -l $HOME/tmp
         rm -rf $HOME/tmp
   fi
}

   echo "Anatation test up mount"
   if [ -z $id ] || [ "$id" -eq 0 ] && test_mount
     then 
        echo "Not pid"

   else
     echo "xD"
   fi       
}

ip(){
  read -p "Leave the ip address unchanged or change ? YSE/NO: " challenge
    while [ "$challenge" == NO ] || [ "$challenge" == YES ]
       do
        if [ "$challenge" == "YES" ]
           then
            read -p "Write new ip address : " ip
               if test; then echo "$ip"; fi
        elif [ "$challenge" == "NO" ]
           then 
            echo "IP address not changed"
               if start; then echo "$ip"; fi 
              break     
        fi      
       done


}

for i in list
  do
    echo "backup megaflowers..."
    echo "Look down next options stat script"
    read -p "Please choose the menu you need : " menu
     while [ "$menu" == "start" ] || [ "$menu" == "stop" ] || [ "$menu" == "test" ] || [ "$menu" == "restart" ] || [ "$menu" == "ip" ];
       do
        
        if [ "$menu" == "start" ]
           then
             if [ -d  $PATCH ]; then start; else break; fi
        elif [ "$menu" == "stop" ]
           then
              echo ""
               break       
        elif [ "$menu" == "test" ]
              then
                if [ -d  $PATCH ]; then test; else break; fi
                            break 
         elif [ "$menu" == "restart" ]
               then
                 echo ""
                  break
         elif [ "$menu" == "ip" ] 
               then
                 if [ -n  $ip ]; then ip; else break; fi
                   break         
        else            
             break
        fi          

       done
    done