Wheelie Car
===========

Descripción
-----------
El objetivo del proyecto es construir un coche teledirigido capaz de mantenerse
en equilibrio vertical sobre dos ruedas (las dos traseras o las dos
delanteras).

Para ello se utilizará la emergente tecnología de los sensores
micro-electro-mecánicos \(_MEMS_\), los _"MARG array sensor" (magnetic, angular
rate, and gravity)_, microcontroladores _AVR_, diversos tipos de motores
(servos, DC...) y sensores.

Parte Hardware
--------------
Ésta es la parte *hardware* del proyecto. Aquí vamos a diseñar los esquemáticos
de los circuitos y su implementación en una PCB. Para esto vamos a usar las
herramientas del proyecto [gEDA](http://www.geda-project.org/ "gEDA official web
page").

Parte Firmware
--------------
Por motivos de organización y por ser casi totalmente independiente de esta
parte, la parte *firmware* se desarrolla en un repositorio aparte:
[https://github.com/WheelieCar/Firmware](https://github.com/WheelieCar/Firmware)

El proyecto completo está alojado en [github](https://github.com/ "Pagina
principal de github") en la siguiente dirección:
[https://github.com/WheelieCar/](https://github.com/WheelieCar/)

Estructura del repositorio
--------------------------
En la raíz del repositorio encontramos:

* Los archivos \*.sch de los esquemáticos
* El archivo \*.pcb del diseño del circuito impreso
* Los archivos de configuración de las herramientas de gEDA
* La carpeta gEDA que incluye:
	* Una carpeta gschem-sym con todos los símbolos que creemos
	* Una carpeta pcb-elements con los footprints de estos símbolos

Se ha creado un Makefile que genera un fichero PDF con los esquemáticos y el
diseño de la PCB. Debido a un bug en el programa _gschem_ los archivos \*.pdf de
los esquemáticos hay que crearlos a mano.
