program registros;

//Los registros, a diferencia de los arreglos, permiten manejar datos heterogéneos en una misma variable.
//Para expresar el siguiente código a modo de enunciado, consideremos que se nos pide cargar los datos de un alumno y mostrarlos.

uses crt;

type
	vector=array[1..4]of integer;

	alumno=record			//Declaro un registro de tipo alumno y sus respectivos campos
			nombre:string;
			notas:vector;
			promedio:real;
			end;

var
	a:alumno;	//Al igual que el resto de los tipos estructurados, los registros como tipo de dato se pueden asignar a una o más variables
	c,i:integer;

begin
	clrscr;
	writeln('Procedemos a cargar los datos del alumno...');
	writeln('-------------------------------------------');
	write('Ingrese nombre: ');
	readln(a.nombre);			//Para acceder al campo del registro, se utiliza la siguiente sintaxis: <nombre_registro>.<nombre_campo>
	writeln();
	c:=0;
	for i:=1 to 4 do
	begin
		write('Ingrese nota ',i,': ');
		readln(a.notas[i]);
		c:=c+a.notas[i];
	end;
	a.promedio:=c/4;
	writeln('-------------------------------------------');
	writeln('Datos cargados. Presione cualquier tecla para continuar...');
	readkey;
	clrscr;
	writeln('Datos del alumno:');
	writeln('-----------------');
	writeln('Nombre: ',a.nombre);
	for i:=1 to 4 do
		writeln('Nota ',i,': ',a.notas[i]);
	writeln('Promedio: ',a.promedio:5:2);
	writeln('-----------------');
	writeln('Presione cualquier tecla para cerrar...');
	readkey;
	clrscr;
end.