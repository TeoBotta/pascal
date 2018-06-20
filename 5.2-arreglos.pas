program arreglos;

uses crt;

type
	matriz=array[1..3,1..4]of integer;	//Arreglo bidimensional de tipo entero

var
	m:matriz;
	i,j:integer;

begin
	clrscr;
	writeln('Procedemos a cargar la matriz...');
	writeln('----------------------------------');
	for i:=1 to 3 do
	begin
		for j:=1 to 4 do
		begin
			write('Ingrese dato a guardar en la fila ',i,' columna ',j,': ');
			readln(m[i,j]);
		end;
	end;
	writeln('---------------------------------------');
	writeln('Presione cualquier tecla para pasar a la muestra de los datos...');
	readkey;
	clrscr;
	writeln('Datos cargados en la matriz:');
	writeln('----------------------------');
	for i:=1 to 3 do
	begin
		for j:=1 to 4 do
			writeln('El elemento guardado en la fila ', i,' columna ',j,' es: ',m[i,j]);
	end;
	writeln('----------------------------');
	writeln('Presione cualquier tecla para finalizar...');
	readkey;
	clrscr;
end.