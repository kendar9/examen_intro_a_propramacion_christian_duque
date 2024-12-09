Funcion x=menu(x)
	terminar=falso
	Escribir "1.registrar estudiante"
	Escribir "2.mostrar listado de estudiantes"
	Escribir "3.asginar notas"
	Escribir "4.registro de inasistencia"
    Escribir "5.listado de estudiantes con sus notas"	
	Escribir "0.Salir del programa"
	Escribir "¿Que desea hacer?"
	leer x
	Repetir
		si x < 0 o x > 5 Entonces
			Escribir "opcion invalida, elija nuevamente"
			leer x
		FinSi
		
	Hasta Que x >= 0 o  x <= 5
	
FinFuncion   

Funcion estud=estudiante(bd,estud,cod,nombre,nota,inasistencia)
	bd(estud,1)=cod
	bd(estud,2)=nombre
	bd(estud,3)=nota
	bd(estud,4)=inasistencia
	estud=estud+1
	
FinFuncion
Funcion l=listado(estudiantes,estud,cod,codigo,nombre)
	Escribir "lista de estudiantes"
	para i = 1 hasta estud 
		Escribir Sin Saltar estudiantes(i,1) " "
		Escribir  estudiantes(i,2)
	FinPara
	
FinFuncion

funcion n=notas(estudiantes,estud,not)
	Escribir "digite el codigo del estudiante a calificar"
	leer cod
	indx=0
	para i=1 Hasta estud-1 Hacer
		si cod = estudiantes(i,1) Entonces
			indx=i
		FinSi
	FinPara
	si indx=0 Entonces
		Escribir "codigo no existe"
	SiNo
            para i= 1 Hasta 3
			Escribir Sin Saltar "digite nota" , i, " del estudiante a registrar:"
			leer n
			not(i)=n
			
	          
		FinPara
		
	finsi	
FinFuncion

Funcion i=inasis(estudiantes,estud)
	Escribir "digite el codigo del estudiante"
	leer cod
	indx=0
	para i=1 Hasta estud-1 Hacer
		si cod = estudiantes(i,1) Entonces
			indx=i
		FinSi
	FinPara
	si indx=0 Entonces
		Escribir "codigo no existe"
	SiNo
		Escribir "digite numero de inasistencias"
		leer ina
		si ina > 10 o ina < 15 Entonces
			prom=prom-0.5
		FinSi
	finsi
FinFuncion
funcion nf=notafinal(estudiantes,estud,not,prom)
	Escribir "COD NOMBRE P1  P2  P3  INASISTENCIA NOTA FINAL"
	para i = 1 hasta estud -1
		Escribir Sin Saltar estudiantes(i,1) " "
		Escribir Sin Saltar estudiantes(i,2) " "
		Escribir Sin Saltar  not(1), " " not(2), " " not(3) 
		//Escribir Sin Saltar  estudiantes(i,4) " "
		Escribir ,prom 
		
	FinPara
	
FinFuncion
Algoritmo calculadora_de_notas
	estud=1
	Dimensionar not(3)
	Dimensionar estudiantes(estud,4)
	
	terminar=falso
	Repetir
		x=menu(x)
		segun x
	0: 
		Escribir "programa terminado"
		terminar= no terminar
	1: 
		Escribir "digite el codigo del estudiante a registrar"
		leer codigo
		Escribir "digite el nombre del estudiante a registrar"
		leer nombres
		estud=estudiante(estudiantes,estud,codigo,nombres,nos,inasistencias)
		Redimensionar estudiantes(estud,4)
		
	2:
		
		l=listado(estudiantes,estud,cod,codigo,nombre)	
	3:
		
		
		n=notas(estudiantes,estud,not)
		
		prom=(not(1)+not(2)+not(3))/3
		Escribir prom
	4:
		
		i=inasis(estudiantes,estud)
	5:
		
		
		nf=notafinal(estudiantes,estud,not,prom)
		
		
FinSegun

	Hasta Que terminar 
FinAlgoritmo
