#!/bin/bash
#Se busca para compilar MESOS

#Para tener idea de a que hora paso algo
fechaLog=`date "+%Y_%m_%d_%H_%M"`
echo "Iniciando a las ${fechaLog}"

formatoH="+%Y/%m/%d %H: %M: %S"

touch LogMesos_${fechaLog}.txt
echo `date "${formatoH}"` ": iniciando Descarga" >> LogMesos_${fechaLog}.txt

echo "iniciando Descarga"
wget http://www.apache.org/dist/mesos/0.25.0/mesos-0.25.0.tar.gz

echo "extrac pakage"
tar -xzf mesos-*.tar.gz
rm mesos-*.tar.gz ; mv mesos-* mesos
cd mesos

echo "Buildin Dir Buil"
mkdir build
cd build
sh ../configure

echo "making pakage"
make 
make check
make install