program decision;

uses crt;

var
	n:integer;

begin
	clrscr;
	write('Ingresa un numero del 1 al 10: ');
	readln(n);
	if(n = 1)then	
		writeln('Ingresaste 1');	//Se utiliza una sola línea de código en la rama verdadera y si cierra la sentencia
	if(n = 2)or(n = 3)then			//Se usa condición compuesta, n=2 o n=3
		writeln('Ingresaste 2 o 3');		
	if(n > 3)and(n <= 7)then		//Se usa condición compuesta, n>3 y n<7
	begin							//Se usa un bloque de código en la rama verdadera
		if(n = 4)then				//Se anidan sentencias
			writeln('Ingresaste 4')
		else						//Existe rama falsa
			writeln('Ingresaste 5, 6 o 7');	//La rama falsa utiliza una sola línea de código
	end;
	if(n > 7)then
	begin
		if(n = 8)or(n = 9)then
			writeln('Ingresaste 8 o 9')
		else						//La rama falsa usa un bloque de código
		begin
			if(n = 10)then
			begin
				writeln('Ingresaste el numero que aparece abajo de este mensaje...');
				writeln('10');
			end	//Se cierra un bloque de código antes de una rama falsa
			else
				writeln('Ingresaste cualquier cosa...');
		end;
	end;
	if(n < 1)then
		writeln('Ingresaste cualquier cosa...');
	writeln('------------------------------------------------------');
	writeln('Presiona cualquier tecla para cerrar...');
	readkey;
	clrscr;
end.