program iteracion;

uses crt;

var
	i,c,c2:integer;
	f:boolean;
	resp:char;

begin
	clrscr;
	writeln('La siguiente iteracion es incondicional creciente...');
	for i:=1 to 10 do	//Obligadamente, el step será incremento de a una unidad. En caso de DOWNTO, será decremento de a una unidad
		writeln(i);
	readkey;
	clrscr;
	writeln('La siguiente iteracion es incondicional decreciente...');
	for i:=20 downto 10 do //Iteración decreciente
		writeln(i);
	readkey;
	clrscr;
	c:=4;
	c2:=8;
	writeln('La siguiente iteracion es incondicional con parametros...');
	for i:=c to c2 do
		writeln(i);
	readkey;
	clrscr;
	f:=true;
	writeln('La siguiente iteracion es condicional...');
	while(f=true)and(i<15)do 	//Iteración condicional con condición compuesta
	begin
		writeln(i);
		writeln('Cortar la iteracion? (s/n)');
		write('Respuesta: ');
		readln(resp);
		if(resp='s')then
			f:=false;
		i:=i+1;
	end;
	writeln('Se corto la iteracion...');
	readkey;
	clrscr;
	f:=true;
	repeat 	//Iteración condicional
		writeln(i);
		writeln('Cortar la iteracion? (s/n)');
		write('Respuesta: ');
		readln(resp);
		if(resp='s')then
			f:=false;
		i:=i+1;
	until(f=false)or(i=20);		//Iteración condicional con condición compuesta
	writeln('Se corto la iteracion...');
	readkey;
	clrscr;	
end.