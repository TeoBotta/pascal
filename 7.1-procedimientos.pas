program procedimientos;

{
	Los procedimientos permiten realizar una codificación modular de nuestros programas, permitiendo ejecutar bloques de código
	con escribir una sola línea en el programa.
	Dentro de un procedimiento se pueden utilizar todas las instrucciones conocidas por Pascal, así como las definidas por el programador.
	Pascal analiza de forma secuencial de arriba hacia abajo.
	Por lo tanto si queremos definir un procedimiento que llama a un tipo estructurado (type), éste debe estar definido previamente.
	Lo mismo sucede con las variables declaradas.
}


uses crt;

type
	vector=array[1..5]of integer;


var
	i:integer;
	vec:vector;

procedure cargaVector(var v:vector);	//Definimos un procedimiento con pasaje de parámetros por referencia
var		//En los procedimientos es posible definir variables locales. Lo mismo aplica para las funciones
	i:integer;

begin
	for i:=1 to 5 do
	begin
		write('Ingrese datos del elemento ',i,': ');
		readln(v[i]);
	end;
end;

procedure mostrar(v:vector);
begin
	for i:=1 to 5 do
		writeln('El dato en la posicion ',i,' es: ',v[i]);
end;

procedure cargaFalsa(v:vector);	//Definimos un procedimiento con pasaje de parámetros por copia
begin							//Por ende, no se afectan los datos fuera del procedimiento
	for i:=1 to 5 do
		v[i]:=9;
	mostrar(v);	//En los procedimientos se puede invocar a otros procedimientos o funciones
end;

begin
	clrscr;
	cargaVector(vec);
	writeln('-------------------------------------------------------------------');
	mostrar(vec);
	writeln('-------------------------------------------------------------------');
	writeln('Presione cualquier tecla para continuar...');
	readkey;
	clrscr;
	writeln('Ahora llamamos al procedimiento de carga con parámetro por copia...');
	writeln('-------------------------------------------------------------------');
	cargaFalsa(vec);	//Esto mostrará todos los datos en 9
	writeln('-------------------------------------------------------------------');
	writeln('Presione cualquier tecla para continuar...');
	readkey;
	clrscr;
	writeln('Ahora mostramos los datos por fuera del procedimiento "cargaFalsa"...');
	writeln('---------------------------------------------------------------------');
	mostrar(vec);
	writeln('------------------------------------------');
	writeln('Presione cualquier tecla para cerrar...');
	readkey;
	clrscr;
end.