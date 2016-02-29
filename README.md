

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
* UBUNTU 15.10 x86_64 
* RAM: 4GB
* DELL OptiPlex 780
* PROCESADOR: Intel(R) Core(TM)2 Duo CPU E8400  @ 3.00GHz

### Procedimiento para usar

Se ejecutan de la siguente manera los scripts:

Antes de iniciar se instalan los requerimientos

```console
$./installrRequirement.sh
```

* Maestro

```console
$ ./buildMESOS.sh
```

* Slaves

```console
$ ./installSlaves.sh
```