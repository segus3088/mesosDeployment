#!/bin/bash
#Se busca instalar lo requerimientos antes de instalar MESOS

echo "Iniciando instalación requerimientos"
sudo apt-get update

echo "Intalando JDK7"
sudo apt-get install -y openjdk-7-jdk

sudo apt-get install -y autoconf libtool

echo "Instalando las dependecias"
sudo apt-get -y install build-essential python-dev python-boto libcurl4-nss-dev libsasl2-dev maven libapr1-dev libsvn-dev libz-dev