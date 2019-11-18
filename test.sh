#!/bin/bash

. env_per

start(){
 . env_private

backup(){

     if [ -d $HOME/tmp ]
       then  
          if [ -n $data_time_mes ];
          then
            #Монтирование и последущия зависищия логика
            . env_mount
          else   
             return
          fi

            if  [ -n $files_data ] || [ -n $files_find ] && [  '$files_find' == '$files_data' ] 
               then
               # Вернул True  
                  return
             else 
               # Верннул False
               dir=$(if [ -d $PATCH ]; then . env_copy; else return; fi) 
               if [ -d  $HOME/tmp ]; then return; else $dir; fi
            fi    
     else
        #Не выполнилось 0 условий call back        
        mkdir $HOME/tmp 
        if echo "return func backup"; then backup ; fi
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
  	    if dates=$(ls -lsh $PATCH |grep $data_time_mes|awk '{print$10}'); then mass;  fi
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

config(){
  read -p "Do you want to change the default configurations of the program ? YSE/NO: " challenge
    while [ "$challenge" == NO ] || [ "$challenge" == YES ]
       do
        if [ "$challenge" == "YES" ]
           then
            read -p "Enter a new ip address : " ip
            read -p "Keep the directory you want to copy : " dir
            read -p "Indicate the place where to copy : " PATCH
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
     while [ "$menu" == "start" ] || [ "$menu" == "stop" ] || [ "$menu" == "test" ] || [ "$menu" == "restart" ] || [ "$menu" == "config" ];
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
         elif [ "$menu" == "config" ] 
               then
                 if [ -n  $ip ]; then config; else break; fi
                   break         
        else            
             break
        fi          

       done
    done