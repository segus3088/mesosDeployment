

Auto-Deployment Apache MESOS
===============================

Conjunto de Scripts para la "Practica de Investigación Apache MESOS"

## Soporte
Este es un desarrollo de algunos Scripts para el Despliegue de Apache MESOS en sistemas de Linux para distribuciones basadas en DEBIAN.

## Características Host Pruebas Maestro
* UBUNTU 14.04 x86_64
* RAM: 4GB
* DELL OptiPlex 780
* PROCESADOR: Intel(R) Core(TM)2 Duo CPU E8400  @ 3.00GHz


## Características Host Pruebas Slave
* UBUNTU 14.10 x86_64 
* RAM: 4GB
* DELL OptiPlex 780
* PROCESADOR: Intel(R) Core(TM)2 Duo CPU E8400  @ 3.00GHz

### Procedimiento para usar

Se ejecutan de la siguente manera los scripts:

Antes de iniciar se instalan los requerimientos

```console
$ ./installRequirement.sh
```

Los procesos de instalación del Maestro y los esclavos se pueden hacer en paralelo
* Maestro

```console
$ ./buildMESOS.sh
```

* Slaves

```console
$ ./installSlaves.sh
```

## Ejecución de mesos

Se requiere que se ejecute primero el nodo Maestro y una vez este arriba se ejecuta cada uno de los nodos esclavos de la siguiente manera:

### Ejecución Maestro

```console
$ sudo mesos-master --work_dir=/var/lib/mesos
```
Por defecto se ejecuta el maestro por el puerto 5050

### Ejecución en esclavo

```console
$ mesos-slave --master=<ip del master>:5050
```