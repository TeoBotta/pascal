program intro; //Declaramos que el siguiente código es una aplicación

uses crt; //Declaramos librerías a utilizar

const	//Declaración de constantes
	h='Hola ';

var 	//Declaración de variables
	nombre:string;	//Tipo de dato cadena de caracteres
	edad:integer;	//Tipo de dato entero
	altura:real;	//Tipo de dato real


begin	//Inicio del bloque de código de la aplicación propiamente dicha
	clrscr;	//Función de la librería crt. Permite limpiar la consola
	write('Ingresa tu nombre: ');	//Imprimo mensaje en pantalla (sin quiebre de línea)
	readln(nombre);	//Leo datos ingresados por teclado y los guardo en la vriable 'nombre'
	writeln();
	writeln(h, nombre,'!');	//Imprimo datos en pantalla (con quiebre de línea)
	writeln();
	write('Ingresa tu edad: ');
	readln(edad);
	writeln();
	write('Ingresa tu altura: ');
	readln(altura);
	clrscr;
	writeln('Tus datos...');
	writeln('------------');
	writeln('Nombre: ',nombre);
	writeln('Edad: ',edad);
	writeln('Altura: ',altura:5:2);	//Para imprimir tipos de datos reales, usamos delimitadores de rango
	writeln('------------');
	writeln('Presiona cualquier tecla para cerrar...');
	readkey;	//Función de la librería 'crt'. Espera presión de cualquier tecla
	clrscr;
end.	//Indico fin de código de la aplicación