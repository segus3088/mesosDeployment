#!/bin/bash

fechaLog=`date "+%Y_%m_%d_%H_%M"`
echo "Iniciando a las ${fechaLog}"

formatoH="+%Y/%m/%d %H: %M: %S"

touch LogMesos_${fechaLog}.txt
echo `date "${formatoH}"` ": iniciando Descarga" >> LogMesos_${fechaLog}.txt
cat LogMesos_${fechaLog}.txt