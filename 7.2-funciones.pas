program funciones;

{
	Las funciones permiten realizar cálculos y evaluaciones de bloques de código con solo una línea, tal como sucede
	con los procedimientos.
	A diferencia de los procedimientos, las funciones no reciben parámetros por referencia, por lo que no modifican otros datos.
	La función retorna un valor perteneciente al tipo de dato que se define en su encabezado.
}

uses crt;

function esMayorA50(n:integer):boolean;	//Encabezado de función que devuelve un tipo booleano
begin
	if(n>50)then
		esMayorA50:=true
	else
		esMayorA50:=false;
end;

var
	r:boolean;
	numero:integer;

begin
	clrscr;
	write('Ingrese un numero: ');
	readln(numero);
	writeln();
	r:=esMayorA50(numero);	//Le asignamos a 'r' el valor que retorna la función cuando se le pasa el parámetro 'numero'
	if(r=true)then			//También es posible incluir la función dentro de la condición, quedando: if(esMayorA50(numero)=true)then...
		writeln('El numero ',numero,' es mayor a 50')
	else
		writeln('El numero ',numero,' no es mayor a 50');
	writeln('-------------------------------');
	writeln('Presione cualquier tecla para finalizar...');
	readkey;
	clrscr;
end.