#!/bin/bash
#Se busca para compilar MESOS

echo "iniciando Descarga"
wget http://www.apache.org/dist/mesos/0.21.0/mesos-0.21.0.tar.gz

echo "extrac pakage"
tar –xzf mesos-*.tar.gz
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