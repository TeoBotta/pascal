program recursion;

{
	Los algoritmos recursivos de caracterizan por llamarse a sí mismos, y tener un caso base.
	En cada llamado a sí mismo, nos acercamos al caso base.
	Son útiles cuando se programa en lenguajes que no poseen estructuras nativas de iteración.
}

{
	A modo de ejemplo, el siguiente programa recibe un valor ingresado por teclado y calcula el factorial de dicho valor.
}

uses crt;

function factorial(n:integer):integer;	//Definimos una función
begin
	if(n=0)then
		factorial:=1
	else
		factorial:=n*factorial(n-1);	//Llamado recursivo. Estamos invocando a la misma función en la que estamos actualmente
end;

var
	numero:integer;

begin
	clrscr;
	write('Ingrese un numero para calcular su factorial: ');
	readln(numero);
	writeln();
	if(numero<0)then
		writeln('Error. No se puede calcular el factorial de un numero negativo')
	else
		writeln('El factorial de ',numero,' es: ',factorial(numero));
	writeln();
	writeln('Presione cualquier tecla para cerrar...');
	readkey;
	clrscr;
end.