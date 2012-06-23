playcfg
=======

Introducción
------------
Playcfg es un script utilizado para la configuración de distintas versiones de Play! Framework. Cuando en un entorno de desarrollo se esta trabajando con más de una versión de Play! se deben realizar cambios en el PATH, el realizar estos cambios a mano y para cada una de las instancias que tengamos instalada es una tarea muy repetitiva.

Precondiciones
--------------
Si deseamos utilizar playcfg debemos tener en consideración lo siguiente:

* Todas las versiones de Play! que usemos deberán encontrarse en una raiz (p.e. D:/programas/play)
* Para agregar una versión en particular deberemos descomprimir el framework en una carpeta que tenga como nombre la versión del framework (p.e. 1.2.4, 1.2.5, 2.0, etc)

Instalación
-----------
Para realizar la instalación del script debemos realizar los siguientes pasos:
1. Copiar el script playcfg.bat en la carpeta raiz de las versiones de Play! (p.e. D:/programas/play)
2. Agregar al PATH la carpeta raiz de las versiones de Play!
3. Abrir el script y cambiar el valor de la variable defaultVersion a la versión que se desee tener como default

Uso
---
Para utilizar el script se deberá ejecutar desde cualquier consola el siguiente comando:

	playcfg version [VERSION A UTILIZAR]

O simplemente:

	playcfg 

Si se desea configurar el PATH con la versión por defecto

En caso el script no encuentre una versión de Play! esta no será cargada al PATH

TODO
----
Desarrollar un script similar para *nix