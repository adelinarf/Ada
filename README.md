# Ada
Pregunta 1.b Tarea 1

Los programas se han elaborado en el lenguaje Ada.

El programa que calcula la potencia modulada de a^b mod c se encuentra en el archivo potenciacionModulada.adb
Mientras que el programa que calcula la multiplicación de matrices se encuentra en multiplicarMatrices.adb

###potenciacionModulada.adb

Este programa acepta las entradas por consola, por lo que solo se requiere correr el programa para utilizarlo.
###multiplicarMatrices.adb

Este programa no acepta entradas por consola, se debe modificar el código para poder introducir las matrices deseadas.
Luego del declare, se deben inicializar las matrices tales que:

    A : array (1 .. nFilas, 1 .. nColumnas) of Integer := (others => (others => 1)); --Se crean las variables para alojar las matrices
	  B : array (1 .. nFilas, 1 .. nColumnas) of Integer := (others => (others => 1));
    
Después deben ser inicializadas estas matrices, con los valores deseados de la siguiente manera:

    A := ((1,2),(3,4));  --Se deben colocar las matrices con el mismo formato y los valores deseados
	  B := ((2 ,5),(6, 7));
