program arreglos;

uses crt;

type		//Definimos los tipos estructurados
	vector=array[1..5]of string;			//Arreglo unidimensional de tipo cadena de caracteres

var
	v1,v2:vector;		//Definimos variables a partir de los tipos estructurados. Podemos definir un numero indefinido
	i:integer;

begin
	clrscr;
	writeln('Procedemos a cargar el vector 1...');
	writeln('----------------------------------');
	for i:=1 to 5 do
	begin
		write('Ingrese dato a guardar en la posicion ',i,': ');
		readln(v1[i]);
	end;
	writeln('Fin de carga del vector. Presione cualquier tecla para continuar...');
	readkey;
	clrscr;
	writeln('Procedemos a cargar el vector 2...');
	writeln('----------------------------------');
	for i:=1 to 5 do
	begin
		write('Ingrese dato a guardar en la posicion ',i,': ');
		readln(v2[i]);
	end;
	writeln('Fin de carga del vector. Presione cualquier tecla para continuar...');
	readkey;
	clrscr;
	writeln('Datos cargados en el vector 1:');
	writeln('------------------------------');
	for i:=1 to 5 do
		writeln('Dato guardado en la posicion ',i,' del vector 1: ',v1[i]);
	writeln('----------------------------------------');
	writeln();
	writeln('Datos cargados en el vector 2:');
	writeln('------------------------------');
	for i:=1 to 5 do
		writeln('Dato guardado en la posicion ',i,' del vector 1: ',v2[i]);
	writeln('------------------------------------------');
	writeln();
	writeln('Presione cualquier tecla para finalizar...');
	readkey;
	clrscr;
end.