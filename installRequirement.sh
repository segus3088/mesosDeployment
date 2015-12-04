#!/bin/bash
#Se busca instalar lo requerimientos antes de instalar MESOS

echo "Iniciando instalación requerimientos"
sudo apt-get -y install build-essential openjdk-6-jdk python-dev python-boto libcurl4-nss-dev libsasl2-dev libapr1-dev libsvn-dev maven
