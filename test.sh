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

for i in list
  do
    echo "backup megaflowers..."
    echo "Look down next options stat script"
    read -p "Please choose the menu you need : " menu
     while [ "$menu" == "start" ] || [ "$menu" == "stop" ] || [ "$menu" == "test" ] || [ "$menu" == "restart" ];
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
        else            
             break
        fi          

       done
    done