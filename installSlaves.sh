#! /bin/bash
#!/usr/bin/expect
#Para compiar e instalar en los slaves
#Se Compia la carpeta compilada de mesos

#Para tener idea de a que hora paso algo
fechaLogSlave=`date "+%Y_%m_%d_%H_%M"`
echo "Iniciando a las ${fechaLog}"

formatoH="+%Y/%m/%d %H: %M: %S"

echo "host Al que se va a instalar"
read hostSlaveI
#nombre del host al que voy a instalar

echo "User to acces host ${hostSlaveI}"
read userToHost
#usuario para acceder

echo "Pass of user ${userToHost}"
read -s passToHost

#instalando llave 


#spawn scp *.sh $userToHost@$hostSlaveI:~

#expect "password: "

#send "${passToHost}\r"

ssh -t $userToHost@$hostSlaveI 'sh installRequirement.sh'

ssh -t $userToHost@$hostSlaveI 'sh buildMESOS.sh'
#Copiando la carpeta mesos ya compilada
#scp -r mesos $userToHost@$hostSlaveI:~


## Metodo Anterior
#Serie de comando que correran el sclavo 
#ssh -t $userToHost@$hostSlaveI << EOF
#cd mesos/build

#echo `date "${formatoH}"` ": Iniciando check" >> ../../LogMesos_${fechaLogSlave}.txt
#make check
#echo "making check"

#echo `date "${formatoH}"` ": Realizado check" >> ../../LogMesos_${fechaLogSlave}.txt

#sudo make install
#echo "Install end --"

#echo `date "${formatoH}"` ": Insalado" >> ../../LogMesos_${fechaLogSlave}.txt
#EOF
