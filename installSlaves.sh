#! /bin/bash
#Para compiar e instalar en los slaves
#Se Compia la carpeta compilada de mesos

echo "host Al que se va a instalar"
read hostSlaveI
#nombre del host al que voy a instalar

echo "User to acces host ${hostSlaveI}"
read userToHost

scp *.sh $userToHost@$hostSlaveI:~
ssh $userToHost@$hostSlaveI
sh installRequirement.sh
