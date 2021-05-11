SubProceso menu()
	Definir opcion Como Entero;
	Escribir "1. Suma de los digitos";
	Escribir "2. Resta de los digitos";
	Escribir "3. Multiplicación de los digitos";
	Escribir "4. Dividir de los digitos";
	Escribir "5. Validar el digito mayor, menor o si son iguales";
	Escribir "6. Ver numeros del 1 al 1000";
FinSubProceso

SubProceso numero1()
	Escribir 'Ingrese el primer digito';
	Definir  digito1 Como Entero;
FinSubProceso

SubProceso numero2()
	Escribir 'Ingrese el segundo digito';
	Definir  digito2 Como Entero;
FinSubProceso

Proceso Operaciones
	
	Definir digito1,digito2,opcion,resultado, contador Como Entero;
	Escribir "MENU de OPCIONES";
	Escribir "=================";
	menu;
	Escribir "Seleccione una Opcion:"; 
	Leer opcion;
	Definir  resultado Como Entero;
	Segun opcion Hacer
		1:
			Escribir "La suma de los dos digitos es: ";
			numero1;
			Leer digito1;
			numero2;
			Leer digito2;
			resultado=digito1+digito2;
			Escribir digito1,'+', digito2,'=',resultado;	
		2:
			Escribir "La resta de los dos digitos es: ";
			numero1;
			Leer digito1;
			numero2;
			Leer digito2;
			resultado=digito1-digito2;
			Escribir digito1,'-', digito2,'=',resultado;	
		3:
			Escribir "La multiplicación de los dos digitos es: ";
			numero1;
			Leer digito1;
			numero2;
			Leer digito2;
			resultado=digito1*digito2;
			Escribir digito1,'*', digito2,'=',resultado;	
		4:
			
			Escribir "La división de los dos digitos es: ";
			numero1;
			Leer digito1;
			numero2;
			Leer digito2;
			Si digito1 > digito2 Entonces
				resultado = digito1/digito2;
				Escribir digito1,'/', digito2,'=',resultado;	
			SiNo
				resultado = digito2/digito1;
				Escribir digito2,'/', digito1,'=',resultado;	
			FinSi
		5: 
			numero1;
			Leer digito1;
			numero2;
			Leer digito2;
			Si digito1 == digito2 Entonces
				Escribir "Los digitos ingresados son iguales ";
			SiNo
				Si digito1 > digito2 Entonces
					Escribir digito1, " Es mayor que ", digito2 ;
				SiNo
					Escribir digito1, " Es menor que ", digito2 ;
				FinSi
			FinSi
			
		6:	
			Escribir "Los numeros del 1 al 1000 son: ";
			Definir  contador Como Entero;
			contador = 1;
			Mientras contador <= 1000 Hacer
				Escribir contador;
				contador = contador + 1;
			FinMientras
		De Otro Modo:
			Escribir "OPCIÓN NO EXISTE";
	FinSegun
	
FinProceso