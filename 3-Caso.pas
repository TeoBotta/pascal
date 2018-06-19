program caso;
uses crt;

var
	n:integer;
	c:char;

begin
	clrscr;
	write('Ingresa un numero del 1 al 10: ');
	readln(n);
	case(n)of	//Inicio caso sobre el valor de la variable 'n'
		1: writeln('Ingresaste 1');				//Caso puntual
		2..3: writeln('Ingresaste 2 o 3');		//Caso de rango
		4: writeln('Ingresaste 4');
		5..6,8: writeln('Ingresaste 5, 6 u 8');	//Caso múltiple y de rango
		7: writeln('Ingresaste 7');
		9..10: writeln('Ingresaste 9 o 10');
	else		//Otro caso...
		writeln('Ingresaste cualquier cosa');
	end;		//Fin caso sobre la variable 'n'
	writeln('Presiona cualquier tecla para continuar...');
	readkey;
	clrscr;
	write('Ingresa un caracter: ');
	readln(c);
	case(c)of	//Inicio caso sobre el valor de la variable 'c'
		'a'..'z': writeln('Ingresaste una letra minuscula');
		'A'..'Z': writeln('Ingresaste una letra mayuscula');
		'0'..'9': writeln('Ingresaste un digito');
	else		//Otro caso...
		writeln('Ingresaste cualquier cosa');
	end;		//Fin caso 
	writeln('Presiona para salir...');
	readkey;
	clrscr;
end.