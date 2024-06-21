# Gitpod MySQL

Gitpod y MySQL
## 1. Pasos para configurar MySQL para importar datos desde CSV

### Simbologia

- **$** - Indica que se ejecuta desde consola, terminal o un shell
- **mysql>** - Indica que se ejecuta desde MySQL Shell

### 1.1 Entrar al MySQL shell

````bash
$ mysql
````
### 1.2 Verificar la configuracion de local_infile

Primero se verifica el estado de la variable local_infile, esta variable es la que indica si es puede o no importar datos desde archivos locales.

````bash
mysql> show global variables like 'local_infile';
````
La salida puede verse de la siguiente forma

````bash
+---------------+-------+
| Variable_name | Value |
+---------------+-------+
| local_infile  | OFF    |
+---------------+-------+
1 row in set (0.039 sec)
````

### 1.3 Modificar el valor de "local_infile" para permitirle importar archivos locales

Si el valor de local_infile es OFF hay que cambiarlo a ON.

````bash
mysql> set global local_infile=true;
````

### 1.4 Salir del MySQL shell

Una vez realizada este cambio de valor a la configuracion, hay que salir del MySQL shell y volver a entrar.

````bash
mysql> exit
````

### 1.5 Ingresar nuevamente al MySQL shell agregado el siguiente parametro

Despues de realizado el cambio se ingresa nuevamente al MySQL shell indicado que se hara importacion de datos desde archivos locales con el siguiente parametro.

````bash
$ mysql --local-infile=1
````

Si la conexion solicita un usuario hay que agregar los parametros correspondientes

````bash
$ mysql --local-infile=1 -u root -p
````

### 1.6 Ejecutar un script que importa datos a una tabla desde un CSV

Al ingresar al MySQL shell se puede ejecutar el script que contiene la importacion de los datos.

````bash
mysql> source prueba.sql
````
