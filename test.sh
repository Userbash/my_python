#!/bin/bash

##Анатацция
##Срипт базовго копирования  пользовотельских папок по выборке

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
  #Прроверка помещение первого значения в переменную
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
  #Тестирование на наличие сомнтированных эдементов
   
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

case "$1" in
   start)
      echo "Starting backup"
      start;
      ;;
   test)
      echo "Test backup"
      test;
      ;;
   *)
     echo "Usage: /usr/local/bin/start.sh start|test"
     exit 1
     ;;
esac
