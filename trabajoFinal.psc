Algoritmo trabajo_final
	Definir ingresoval Como Numerica
	Definir ingreso Como Entero; // Definicion de variables del ingreso al menu principal
	
	Definir puntaje, valCompu, valUser, variable Como Entero;  // Definicion de variables del juego 1
	
	Definir inicioHome, oportunidades, aciertos, turno, longPalabra, cont Como Entero; //Definicion de variables del juego 2
	Definir arrayPalabras, arrayCasillas, arrayIngreso, letraUser, letraPalabra, letraUtilizada, cabeza, cabezaArriba, cuerpo, manoDerecha, manoIzquierda, pieDerecho, pieIzquierdo Como Caracter; //Definicion de variables del juego 2
	Definir letraEcontrada, letraDuplicada Como Logico; //Definicion de variables del juego 2
	
	definir num1, num2, num3, num4, arrayNum, numIngr1, numIngr2, numIngr3, numIngr4, numIngresado, intentos, i Como Entero; //Definicion de variables del juego 3
	definir ingresoValor, contadorIntentos, numerosUsados Como Entero; //Definicion de variables del juego 3
	
	Definir n  Como Entero; // Definición de variables de juego 4 Tateti
	Definir memoria como caracter;// vector donde almacenara las asignaciones
	
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "                          $$$$$$$\  $$\                                                   $$\       $$\                  ";                 
	Escribir "                          $$  __$$\ \__|                                                  \__|      $$ |                   ";
	Escribir "                          $$ |  $$ |$$\  $$$$$$\  $$$$$$$\ $$\    $$\  $$$$$$\  $$$$$$$\  $$\  $$$$$$$ | $$$$$$\   $$$$$$$\  ";
	Escribir "                          $$$$$$$\ |$$ |$$  __$$\ $$  __$$\\$$\  $$  |$$  __$$\ $$  __$$\ $$ |$$  __$$ |$$  __$$\ $$  _____| ";
	Escribir "                          $$  __$$\ $$ |$$$$$$$$ |$$ |  $$ |\$$\$$  / $$$$$$$$ |$$ |  $$ |$$ |$$ /  $$ |$$ /  $$ |\$$$$$$\   ";
	Escribir "                          $$ |  $$ |$$ |$$   ____|$$ |  $$ | \$$$  /  $$   ____|$$ |  $$ |$$ |$$ |  $$ |$$ |  $$ | \____$$\  ";
	Escribir "                          $$$$$$$  |$$ |\$$$$$$$\ $$ |  $$ |  \$  /   \$$$$$$$\ $$ |  $$ |$$ |\$$$$$$$ |\$$$$$$  |$$$$$$$  | ";
	Escribir "                          \_______/ \__| \_______|\__|  \__|   \_/     \_______|\__|  \__|\__| \_______| \______/ \_______/  ";
	Escribir "";
	Escribir "                                                                     $$$$$$\                                            ";
	Escribir "             ****                                                    $$  __$$\                                   ****     "; 
	Escribir "            **__**                                                   $$ /  $$ |                                 **__**     ";                                              
	Escribir "            **___**                                                  $$$$$$$$ |                                 **___**     ";                                             
	Escribir "            **___**         ****                                     $$  __$$ |                                 **___**         ****   ";                                            
	Escribir "            **___**       **___****                                  $$ |  $$ |                                 **___**       **___****  ";                                           
	Escribir "            **__**       *__* **___**                                $$ |  $$ |                                 **__**       *__* **___**  ";                                          
	Escribir "             *__*      *__**   ***__**                               \__|  \__|                                  *__*      *__**   ***__**  ";        
	Escribir "             **__*    *__**     **__*                                                                            **__*    *__**     **__*  ";
	Escribir "              **_**  **_**        **                                                                              **_**  **_**        **  ";
	Escribir "               **___**___**                                                                                       **___**___**     ";
	Escribir "               *___________*                  $$$$$$$\  $$\                         $$$$$$\                       *___________*     ";                                   
	Escribir "              *_____________*                 $$  __$$\ $$ |                        \_$$  _|                     *_____________*     ";                                 
	Escribir "             *____0_____0____*                $$ |  $$ |$$ | $$$$$$\  $$\   $$\       $$ |  $$$$$$$\            *____0_____0____*    ";                        
	Escribir "             *_______@_______*                $$$$$$$  |$$ | \____$$\ $$ |  $$ |      $$ |  $$  __$$\           *_______@_______*    ";                        
	Escribir "             *_______________*                $$  ____/ $$ | $$$$$$$ |$$ |  $$ |      $$ |  $$ |  $$ |          *_______________*   ";                      
	Escribir "               *_____v_____*                  $$ |      $$ |$$  __$$ |$$ |  $$ |      $$ |  $$ |  $$ |            *_____v_____*    ";                      
	Escribir "                 **_____**                    $$ |      $$ |\$$$$$$$ |\$$$$$$$ |$$\ $$$$$$\ $$ |  $$ |              **_____**     ";
	Escribir "                                              \__|      \__| \_______| \____$$ |\__|\______|\__|  \__|   ";                       
	Escribir "                                                                      $$\   $$ |                        ";                                            
	Escribir "                                                                      \$$$$$$  |                       ";                                             
	Escribir "                                                                       \______/                       ";                                           
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "                                                                    PRESIONE INTRO  ";
	Escribir "";
	
	Esperar Tecla;
	Borrar Pantalla;
	
	Repetir		
		Repetir         //Ciclo para validar el ingreso
			Escribir "";
			Escribir " MENÚ DE JUEGOS: ";
			Escribir "";
			Escribir " 1 -> Piedra, Papel o Tijera ";
			Escribir " 2 -> Ahorcado";
			Escribir " 3 -> Adivina el número";
			Escribir " 4 -> Ta-Te-Ti";
			Escribir "";
			Escribir " 0 -> Finalizar sesion";
			Escribir "";
			Escribir " Elija la opción que más desee -" Sin Saltar;
			Leer ingreso;
			Si ingreso < 0 o ingreso > 4 Entonces 				//Validacion de lo ingresado por el usuario (debe ser entre 0 y 4)
				Escribir "";
				Escribir " **ERROR DE INGRESO** - presione una tecla para volver a intentarlo";
				Esperar Tecla;
			FinSi
			Borrar Pantalla;
		Hasta Que ingreso >= 0 y ingreso <= 4
		
		Si ingreso == 1 Entonces    //Opcion para el primer juego
			
			Dimension puntaje[2];
			
			Escribir "";
			Escribir "BIENVENIDOS AL JUEGO PIEDRA, PAPEL O TIJERAS";
			Escribir "";
			Escribir " 1- JUGAR ... 0- MENU PRINCIPAL  -" Sin Saltar;
			leer variable;
			
			Mientras variable == 1 Hacer
				Borrar Pantalla;
				Para i = 1 Hasta 2 Hacer  // ciclo para poner en 0 los puntajes de la persona y de la maquina
					puntaje[i] = 0;
				FinPara
				Repetir 				//CICLO DEL JUEGO, QUE SE MANTENDRA ACTIVO MIENTRAS NO HAYA UN GANADOR		
					
					Repetir 
						Escribir " Presione la opcion deseada:";
						Escribir "";
						Escribir " 1 -> Piedra , 2 -> Papel , 3 -> Tijera "; Sin Saltar	
						Leer valUser;
						Si valUser < 1 o valUser > 3 Entonces         //Validacion de lo ingresado por el usuario (debe ser entre 0 y 3)
							Escribir "";
							Escribir " ERROR DE INGRESO - presione una tecla para volver a intentarlo";
							Esperar Tecla;
							Borrar Pantalla;
						FinSi
					Hasta Que valUser >= 1 y valUser <= 3	
					
					valCompu = azar(3)+1;	  //Numero al azar que se va a utilizar para compararlo con el ingresado por usuario	
					
					Si valUser == valCompu Entonces  //Validacion para la opcion de empate
						Escribir "";
						Segun valCompu Hacer
							1:
								Escribir " Empate, los dos elejimos piedra";
							2:
								Escribir " Empate, los dos elejimos papel" ;
							3:
								Escribir " Empate, los dos elejimos tijera";
						FinSegun	
						Escribir "";
						Escribir " Presione una tecla para continuar";
						Esperar Tecla;
					SiNo
						Si valUser == 1 Entonces     //Opcion de ingreso por el usuario - 1
							Escribir "";
							Segun valCompu Hacer     //segun el numero al azar se muestra el resultado
								2:
									Escribir " Punto para nosotros, elejimos papel y vos piedra"; 
									puntaje[1] = puntaje[1] + 1;
								3:
									Escribir " Punto para vos, elejimos tijera vos piedra";
									puntaje[2] = puntaje[2] + 1;
							FinSegun
							Escribir "";
							Escribir " Presione una tecla para continuar";
							Esperar Tecla;
						SiNo
							Si valUser == 2 Entonces    //Opcion de ingreso por el usuario - 2
								Escribir "";
								Segun valCompu Hacer     //segun el numero al azar se muestra el resultado
									1:
										Escribir " Punto para vos, elejimos piedra y vos papel";
										puntaje[2] = puntaje[2] + 1;
									3:
										Escribir " Punto para nosotros, elejimos tijera y vos papel";
										puntaje[1] = puntaje[1]+ 1;
								FinSegun
								Escribir "";
								Escribir " Presione una tecla para continuar";
								Esperar Tecla;
							SiNo       //Opcion de ingreso por el usuario - 3
								Escribir "";
								Segun valCompu Hacer   //segun el numero al azar se muestra el resultado
									1:
										Escribir " Punto para nosotros, elejimos piedra y vos tijera";
										puntaje[1] = puntaje[1] + 1;
									2:
										Escribir " Punto para vos, elejimos papel y vos tijera";
										puntaje[2] = puntaje[2] + 1;
								FinSegun
								Escribir "";
								Escribir " Presione una tecla para continuar";
								Esperar Tecla;
							FinSi				
						FinSi
					FinSi	
					
					Borrar Pantalla
					
					Si puntaje[2] == 3 Entonces				//Valido si el juego llego a su fin, con el usuario como ganador
						Escribir "";
						Escribir " FELICITACIONES! has ganado ", puntaje[2], " a ", puntaje[1];	
						Escribir "";
						Escribir " Presione una tecla para volver al menu principal";
						Esperar Tecla;
					SiNo
						Si puntaje[1] == 3 Entonces         //Valido si el juego llego a su fin, con nosotros como ganadores
							Escribir "";
							Escribir " UPS! has perdido ", puntaje[1], " a ", puntaje[2];
							Escribir "";
							Escribir " Presione una tecla para volver al menu principal";
							Esperar Tecla;
						SiNo	           //Al no haber ganadores, el juego continua y se vulven a mostrar los mensajes como el tanteador
							
							Escribir " * TANTEADOR:  Nosotros ", puntaje[1] , " / vos ", puntaje[2], " *";
							Escribir "";
							
						Fin Si
					Fin Si	
				Hasta Que puntaje[1] == 3 o puntaje[2] == 3
				Repetir
					Escribir "";
					Escribir "Ingrese 1 para jugar. Ingrese 0 para salir -"; Sin Saltar
					leer variable;
				Hasta Que variable == 1 o variable == 0;
			FinMientras
		FinSi
		
		Si ingreso == 2 Entonces   //JUEGO 2
			
			Escribir "";
			Escribir " BIENVENIDOS AL AHORCADO";
			Escribir "";
			Escribir " Desea jugar o volver al menu prncipal";
			Escribir "";
			Escribir " 1- JUGAR ... 0- MENU PRINCIPAL " Sin Saltar;
			
			Repetir					//CICLO DE VALIDACION DE INGRESO
				Leer inicioHome;
				Si inicioHome < 0 o inicioHome > 1 Entonces
					Escribir "";
					Escribir " ERROR de ingreso, vuelva a intentarlo -" Sin Saltar;
				FinSi			
			Hasta Que inicioHome == 0 o inicioHome == 1
			Borrar Pantalla;
			
			Dimension arrayPalabras[21];                   //ARRAY DE PALABRAS PARA ADIVINAR
			arrayPalabras[1] <- "Largo";
			arrayPalabras[2] <- "Cargar";
			arrayPalabras[3] <- "Sacrificio";
			arrayPalabras[4] <- "Ciencia";
			arrayPalabras[5] <- "Espectador";
			arrayPalabras[6] <- "Cuchara";
			arrayPalabras[7] <- "Alfabeto";
			arrayPalabras[8] <- "Problema";
			arrayPalabras[9] <- "Enseñar";
			arrayPalabras[10] <- "Bandeja";
			arrayPalabras[11] <- "Leyenda";
			arrayPalabras[12] <- "Tornillo";
			arrayPalabras[13] <- "Zapato";
			arrayPalabras[14] <- "Almendra";
			arrayPalabras[15] <- "Guitarra";
			arrayPalabras[16] <- "Desenrollar";
			arrayPalabras[17] <- "Mostaza";
			arrayPalabras[18] <- "Conocimiento";
			arrayPalabras[19] <- "Inteligencia";
			arrayPalabras[20] <- "Esqueleto";
			
			Dimension arrayIngreso[27];           //ARRAY PARA ALMACENAR LAS LETRAS QUE YA INGRESO EL USUARIO, SE PUSO 27 QUE SON EL TOTAL DE LETRAS DEL ABCEDARIO
			
			Dimension arraycasillas[12];   //ARRAY PARA LUEGO DIBUJAR LAS LINEAS CON LA CANTIDAD DE LETRAS DE LA PALABRA, TOMA EL VALOR 12 QUE VA A SER EL MAXIMO DE LETRAS QUE TIENEN ALGUNAS PALABRAS
         
			
			Mientras inicioHome == 1 Hacer    //CICLO PARA QUE SI EL INGRESO ES 1, SE EJECUTE EL JUEGO SINO VUELVA AL MENU
				
				//INICIALIZACION DE VARIABLES EN BLANCO, POQRUE SI QUIERE VOLVER A JUGAR QUEDA EL VALOR GUARDADO
				cabezaArriba = "";
				cabeza = "";
				cuerpo = "";
				manoDerecha = "";
				manoIzquierda = "";
				pieDerecho = "";
				pieIzquierdo = "";
				cont = 0;
				oportunidades = 7;
				turno = 0;
				aciertos = 0;
				
				//INICIALIZO EL ARRAY EN BLANCO, POQRUE SI QUIERE VOLVER A JUGAR QUEDA EL PRIMER VALOR GUARDADO
				Para i=1 Hasta 27 Con Paso 1 Hacer    
					arrayIngreso[i] =" "; 
				FinPara
				
				letraEcontrada = Verdadero;
				
				palabra = arrayPalabras[Azar(20)+1];   //ELIJE AL AZAR UNA POSICION DEL ARRAY DE LAS PALBRAS Y SE PONE +1 PORQUE SINO PUEDE QUE ELIJA 0
				longPalabra <- Longitud(palabra);	   //CALCULA LA CANTIDAD DE LETRAS DE LA PALABRA SELECCIONADA
				
				Para i=1 Hasta longPalabra Con Paso 1 Hacer    //CICLO PARA ALMACENAR LAS LINEAS DE LAS LETRAS DE LA PALABRA
					arraycasillas[i] = '_';
				FinPara
				Escribir "";
				Escribir " Oportunidades restantes: ", oportunidades;
				
				Repetir  //CICLO QUE SE MANTENDRA ACTIVO HASTA QUE oportunidades == 1 O aciertos == longPalabra;
					
					Escribir "";
					
					Si letraEcontrada == falso Entonces   //SI LA LETRA ESINCORRECTA, RESTAMOS OPORTUNIDADES Y ASIGNAMOS VALORES AL CUERPO DEL MUÑECO
						Borrar Pantalla;
						turno = turno + 1;
						oportunidades = oportunidades - 1;
						Escribir " Oportunidades restantes: ", oportunidades;
						Escribir "";
						Escribir " Letra no encontrada.";
						Escribir "";
						Segun turno Hacer
							1:
								cabezaArriba = " ___";
								cabeza = "|___|";
							2:
								cuerpo = " | ";
							3:
								manoDerecha = "\";
							4:
								manoIzquierda = "/";
							5:
								pieDerecho = "\";
							6:
								pieIzquierdo = "/";
						FinSegun
						
					FinSI
					
					//DIBUJAMOS EL CUERPO DEL MUÑECO
					Escribir "  -------|";
					Escribir " |     ", cabezaArriba;
					Escribir " |     ", cabeza;
					Escribir " |      ", cuerpo;
					Escribir " |     ",manoIzquierda, cuerpo, manoDerecha;
					Escribir " |    ",manoIzquierda," ", cuerpo, " " manoDerecha; 
					Escribir " |      ", cuerpo;
					Escribir " |     ", pieIzquierdo,"   ", pieDerecho;
					Escribir " |    ", pieIzquierdo,"     ", pieDerecho;
					Escribir " |";
					Escribir "  ---------------";
					Escribir "";
					
					Para i=1 Hasta longPalabra Con Paso 1 Hacer   //CICLO PARA DIBUJAR LAS LENIAS DE LETRAS DE LA PALABRA SECRETA
						Escribir " ", arrayCasillas[i] Sin Saltar;
					FinPara
					
					cont = cont + 1;
					
					Escribir ""; 
					Escribir "";
					Escribir " Letras utilizadas:" Sin Saltar;
					Para i = 1 Hasta cont Con Paso 1 Hacer			//CICLO PARA MOSTRAR LAS LETRAS UTILIZADAS
						Escribir Sin Saltar " - ", arrayIngreso[i];				
					FinPara	
					
					Escribir "";
					Escribir "";
					Escribir " Escriba una letra: " Sin Saltar;
					Repetir									//CICLO PARA VALIDAR EL INGRESO DE LAS LETRAS POR PARTE DEL USUARIO
						
						Repetir                                //CICLO PARA VALIDAR QUE NO SE INGRESE UN ESPACIO EN BLANCO CON EL ENTER
							Leer letraUser;
							Si letraUser == "" Entonces
								Escribir " Ingrese una letra, no se permite darle al enter";
							FinSi
						Hasta Que letraUser <> ""		
						
						letraUser = Mayusculas(letraUser);  //PASO A MAYUSCULAS LA LETRA INGRESADA
						letraDuplicada = falso;
						
						Si cont == 1 Entonces
							arrayIngreso[cont] = letraUser;
							letraDuplicada = Falso;
						SiNo
							Para i = 1  Hasta cont -1 Con Paso 1 Hacer       //CICLO PARA CORROBORAR QUE LA LETRA INGRESADA NO SE A UTILIZADO 
								
								Si arrayIngreso[i] == letraUser Entonces
									Escribir " Letra ya ingresada, vuelva a ingresar otra -" Sin Saltar;
									letraDuplicada = Verdadero;
								FinSi						
								
							FinPara
						FinSi
						
						Si letraDuplicada == Falso Entonces      //SI LA LETRA NO SE UTILIZO, SE ALMACENA EN EL ARRAY
							arrayIngreso[cont] = letraUser;
							letraDuplicada = Falso;
							letraEcontrada = Verdadero;
						FinSi
						
					Hasta Que letraDuplicada == Falso
					
					letraEcontrada = falso;
					
					Para i=1 Hasta longPalabra Con Paso 1 Hacer        //CICLO DONDE SE RECORRE EL LA PALABRA Y SE SUPLANTAN LAS "_" POR LA LETRA CORRECTA
						letraPalabra = Mayusculas(Subcadena(palabra, i, i));
						Si letraUser == letraPalabra Entonces
							letraEcontrada = verdadero;
							Si arrayCasillas[i] == '_' Entonces
								arrayCasillas[i] = letraPalabra;
								aciertos = aciertos+1;
								Borrar Pantalla;
								Escribir " Oportunidades restantes: ", oportunidades;
							FinSi
						FinSi
					FinPara						
					
				Hasta Que oportunidades == 1 O aciertos == longPalabra;
				
				Borrar Pantalla;
				
				Si aciertos == longPalabra Entonces     //SE MUESTRA EL RESULTADO EN CASO DE SER GANADOR
					Escribir "";
					Escribir " Felicidades, has ganado.";
				Sino								  	//SE MUESTRA EL RESULTADO EN CASO DE SER PERDEDOR JUNTO AL MUÑECO COLGADO	
					Escribir "";
					Escribir "  -------|";
					Escribir " |     ", cabezaArriba;
					Escribir " |     ", cabeza;
					Escribir " |   ---------";
					Escribir " |      ", cuerpo;
					Escribir " |     ",manoIzquierda, cuerpo, manoDerecha;
					Escribir " |    ",manoIzquierda," ", cuerpo, " " manoDerecha; 
					Escribir " |      ", cuerpo;
					Escribir " |     ", pieIzquierdo,"   ", pieDerecho;
					Escribir " |    ", pieIzquierdo,"     ", pieDerecho;
					Escribir " |";
					Escribir "  ---------------";
					Escribir "";
					Escribir " Has perdido.";
				FinSi
				
				Escribir "";
				Escribir " La palabra secreta era: ", palabra;
				Escribir "";
				Escribir "";
				Escribir " Desea volver a jugar o ir al menu prncipal";
				Escribir "";
				Escribir " 1- VOLVER A JUGAR ... 0- MENU PRINCIPAL" Sin Saltar;
				
				Repetir										//CICLO PARA CORROBORAR Y VALIDAR SI EL USUARIO QUIERE VOLVER A JUGAR O IR AL MENU PRINCIPAL
					Leer inicioHome;
					Si inicioHome < 0 o inicioHome > 1 Entonces
						Escribir "";
						Escribir " ERROR de ingreso, vuelva a intentarlo -" Sin Saltar;
					FinSi			
				Hasta Que inicioHome == 0 o inicioHome == 1
				
				Borrar Pantalla;
				
			FinMientras			
			
		FinSi
		
		Si ingreso == 3 Entonces
			Repetir   //Ciclo para validar el ingreso
				Escribir "";
				Escribir " Bienvenido al Adivinar el número";
				Escribir "";
				Escribir " Presione la opcion deseada:";
				Escribir "";
				Escribir " 1- JUGAR ... 0- MENU PRINCIPAL " Sin Saltar;
				Leer ingresoValor;
				Si ingresoValor < 0 o ingresoValor > 1 Entonces    //Validacion de lo ingresado por el usuario (debe ser entre 0 y 3)
					Escribir "";
					Escribir " *ERROR DE INGRESO* - presione una tecla para volver a intentarlo";
					Esperar Tecla;
					Borrar Pantalla;
				FinSi
			Hasta Que ingresoValor == 0 o ingresoValor == 1	
			
			Dimension numerosUsados[10];
			
			Dimension arrayNum[5];
			
			Mientras ingresoValor == 1 Hacer
				
				Borrar Pantalla;
				Escribir "";
				Escribir "El número que debes adivinar tiene: "
				Escribir "- 4 cifras distintas.";
				Escribir "- No empieza por 0.";
				Escribir "";
				Escribir "Deberás lograrlo en 10 intentos.";
				Escribir "";
				Escribir "Buena suerte!";
				Escribir "";
				
				//Inicialización de variables
				intentos <- 10;
				contadorIntentos <- 0;
				
				num1 <- azar(10);
				num2 <- azar(10);
				num3 <- azar(10);
				num4 <- azar(10);
				Repetir // Generar los números y que sean todos distintos
					si num1 == 0 Entonces
						Repetir
							num1 <- azar(10);
						Hasta Que num1 <> 0;
					FinSi
					si num2 == num1 o num2 == num3 o num2 == num4 Entonces
						Repetir
							num2 <- azar(10);
						Hasta Que num1 <> num2 y num2 <> num3 y num2 <> num4
					FinSi
					si num3 == num1 o num3 == num2 o num3 == num4 Entonces
						Repetir
							num3 <- azar(10);
						Hasta Que num3 <> num1  y num3 <> num2 y num3 <> num4;
					FinSi
					si num4 == num1 o num4 == num2 o num4 == num3 Entonces
						Repetir
							num4 <- azar(10);
						Hasta Que num4 <> num1 y num4 <> num2 y num4 <> num3
					FinSi
				Hasta Que num1 <> num2 y num1 <> num3 y num1 <> num4 y num2 <> num3 y num2 <> num4 y num3 <> num4;
				
				//Asignación de los valores de los números en el array
				arrayNum[1] <- num1;
				arrayNum[2] <- num2;
				arrayNum[3] <- num3;
				arrayNum[4] <- num4;
				
				//Ciclo del juego
				Repetir
					intentos <- intentos - 1;
					contadorIntentos <- contadorIntentos + 1;
					Repetir //Validar el número ingresado
						Escribir "Ingrese el número que crea correcto: " Sin Saltar;
						leer numIngresado;
						si Longitud(ConvertirATexto(numIngresado)) <> 4 Entonces
							Escribir "ERROR. EL NÚMERO DEBE TENER 4 CIFRAS DISTINTAS.";
						FinSi
					Hasta Que Longitud(ConvertirATexto(numIngresado)) == 4; 
					
					//Separamos el valor de cada número
					numIngr1 <- trunc(numIngresado / 1000);
					numIngr2 <- trunc((numIngresado mod 1000) / 100);
					numIngr3 <- trunc(((numIngresado mod 1000) mod 100)/ 10);
					numIngr4 <- (((numIngresado mod 1000) mod 100) mod 10);
					Borrar Pantalla;
					
					//Almacenamos el valor de cada intento en otro array
					Segun contadorIntentos Hacer
						1: 
							numerosUsados[1] <- numIngresado;
						2:
							numerosUsados[2] <- numIngresado;
						3:
							numerosUsados[3] <- numIngresado;
						4:
							numerosUsados[4] <- numIngresado;
						5:
							numerosUsados[5] <- numIngresado;
						6:
							numerosUsados[6] <- numIngresado;
						7:
							numerosUsados[7] <- numIngresado;
						8:
							numerosUsados[8] <- numIngresado;
						9:
							numerosUsados[9] <- numIngresado;
						10:
							numerosUsados[10] <- numIngresado;
						De Otro Modo:
							Escribir "Algo ha salido mal. Inténtelo de nuevo.";
					FinSegun
					Para i <- 1 Hasta contadorIntentos Hacer //Mostramos su intento por pantalla
						Escribir "Su último intento fue: ", numerosUsados[i];
					FinPara
					Escribir "";
					
					//Comparamos el valor del número correspondiente y si coincide, muestra la coincidencia
					si numIngr1 == arrayNum[1] Entonces
						Escribir "El número ", numIngr1, " está bien ubicado.";
					FinSi
					si numIngr2 == arrayNum[2] Entonces
						Escribir "El número ", numIngr2, " está bien ubicado.";
					FinSi
					si numIngr3 == arrayNum[3] Entonces
						Escribir "El número ", numIngr3, " está bien ubicado.";
					FinSi
					si numIngr4 == arrayNum[4] Entonces
						Escribir "El número ", numIngr4, " está bien ubicado.";
					FinSi
					
					//Comparamos los números a lo largo del array y quitando la posición para que no se agreguen coincidencias de más
					para i<-1 hasta 4 hacer 
						si numIngr1 == arrayNum[i] y i <> 1 Entonces
							Escribir "El número ", numIngr1, " está en una posición incorrecta.";
						FinSi
						si numIngr2 == arrayNum[i] y i <> 2 Entonces
							Escribir "El número ", numIngr2, " está en una posición incorrecta.";
						FinSi
						si numIngr3 == arrayNum[i] y i <> 3 Entonces
							Escribir "El número ", numIngr3, " está en una posición incorrecta.";
						FinSi
						si numIngr4 == arrayNum[i] y i <> 4 Entonces
							Escribir "El número ", numIngr4, " está en una posición incorrecta.";
						FinSi
						
					FinPara
					
					//Fin del ciclo. Si adivina el número, muestra un resultado, mientras que si no lo adivina, muestra otro
					si numIngr1 == arrayNum[1] y numIngr2 == arrayNum[2] y numIngr3 == arrayNum[3] y numIngr4 == arrayNum[4] Entonces
						Borrar Pantalla;
						Escribir "¡FELICIDADES! EL NÚMERO ERA ",  arrayNum[1], arrayNum[2], arrayNum[3], arrayNum[4], " Y LO ADIVINASTE EN ", contadorIntentos, " INTENTOS."
					SiNo
						Escribir "Le quedan ", intentos, " intentos.";
					FinSi
				Hasta Que (numIngr1 == arrayNum[1] y numIngr2 == arrayNum[2] y numIngr3 == arrayNum[3] y numIngr4 == arrayNum[4]) o intentos == 0;
				
				//Resultado que arroja si no pudo adivinar el número
				Si intentos == 0 Entonces
					Escribir "No has podido adivinar el número. El número correcto era ", arrayNum[1], arrayNum[2], arrayNum[3], arrayNum[4];
				FinSi
				
				Repetir   //Ciclo para validar el ingreso
					Escribir "";
					Escribir "Desea volver a jugar?";
					Escribir "Presione la opcion deseada:";
					Escribir "1- JUGAR ... 0- MENU PRINCIPAL " Sin Saltar;
					Leer ingresoValor;
					Si ingresoValor < 0 o ingresoValor > 1 Entonces    //Validacion de lo ingresado por el usuario (debe ser entre 0 y 3)
						Escribir "";
						Escribir " *ERROR DE INGRESO* - presione una tecla para volver a intentarlo";
						Esperar Tecla;
						Borrar Pantalla;
					FinSi
				Hasta Que ingresoValor == 0 o ingresoValor == 1	
		
		
			FinMientras
		FinSi
		
		Si ingreso == 4 Entonces
			Escribir "";
			Escribir " BIENVENIDOS AL Ta-Te-Ti";
			Escribir "";
			Escribir " Desea jugar o volver al menu prncipal";
			Escribir "";
			Escribir " 1- JUGAR ... 0- MENU PRINCIPAL " Sin Saltar;
			
			Repetir					//Ciclo de ingreso//
				Leer ingresoMenu;
				Si ingresoMenu < 0 o ingresoMenu > 1 Entonces
					Escribir "";
					Escribir " ERROR de ingreso, vuelva a intentarlo -" Sin Saltar;
				FinSi			
			Hasta Que ingresoMenu == 0 o ingresoMenu == 1
			Borrar Pantalla;
			Dimension memoria[10]// Matriz para guardar la ficha que se visualiza y matriz para guardar valores por cada jugada //
			 // Alrrays donde se guardaran los caracteres designados por el jugador
			mientras ingresoMenu == 1 Hacer
				para i <- 1 Hasta 9 con paso 1 Hacer // asignacion de espacios en blanco en vector para luego llenarlos con caracteres
					memoria(i) <- " " ;
				FinPara
				i<-1;
			turno <-azar(2) + 1 ; // turno de jugadores aleatoria sumandole 1 para descartar el 0
			mientras i <= 9 Hacer
				
				escribir " Ingresa una posición del (1 - 9 ) -> turno del jugador ", turno; // Dibujo en consola del juego
				Escribir " ";
				Escribir "     1||    2||    3 ";
				Escribir "   ",memoria(1),"  ||  ",memoria(2),"  ||  ",memoria(3); // almacenamiento de caracter en posición señalada
				Escribir " =====++=====++======";
				Escribir "      ||     ||     ";
				Escribir "   ",memoria(4),"  ||  ",memoria(5),"  ||  ",memoria(6);// almacenamiento de caracter en posición señalada
				Escribir "     4||    5||    6";
				Escribir " =====++=====++======";
				Escribir "      ||     ||     ";
				Escribir "   ",memoria(7),"  ||  ",memoria(8),"  ||  ",memoria(9);// almacenamiento de caracter en posición señalada
				Escribir "     7||    8||    9";
				Escribir " ";
				Leer n; // lectura de valor asignado por jugador
				Borrar Pantalla;
				si n > 0 y n < 10 entonces // ciclo para dejar ingresar numeros con referencia, no otro numero 
					si turno == 1 Entonces
						si memoria(n) == " " Entonces //Convinaciones posibles donde gana jugador 1 
							memoria(n) <- "X";
							turno <- 2 ;
							si memoria(1) == "X" y memoria(2) == "X" y memoria(3) == "X" Entonces
								Escribir "El Jugador numero 1 ha ganado";
								i<-9;
							FinSi
							si memoria(4) == "X" y memoria(5) == "X" y memoria(6) == "X" Entonces
								Escribir "El jugador numero 1 ha ganado";
								i<-9;
							FinSi
							si memoria(7) == "X" y memoria(8) == "X" y memoria(9)=="X" Entonces
								Escribir"El jugador numeros 1 ha ganado";
								i<-9;
							FinSi
							
							si memoria(1) == "X" y memoria(4) == "X" y memoria(7)== "x" Entonces
								Escribir"El jugador numero 1 ha ganado";
								i<-9;
							FinSi
							si memoria(2) == "X" y memoria(5) == "X" y memoria(8)  == "X" Entonces
								Escribir "El jugador numero 1 ha ganado";
								i<-9;
							FinSi
							si memoria(3) == "X" y memoria(6) == "X" y memoria(9) == "X" Entonces
								Escribir"El jugador numero 1 ha ganado";
								i<-9;
							FinSi
							si memoria(1)=="X" y memoria(5)=="X" y memoria(9)== "X" Entonces
								Escribir "El jugador numero 1 ha ganado";
								i<-9;
							FinSi
							si memoria(3)=="X" y memoria(5)=="X" y memoria(7)=="X" Entonces
								Escribir"El jugador numero 1 ha ganado";
								i<-9;
							FinSi
						SiNo
							
							Escribir " Esa posición esta ocupada ";
							
						FinSi
						
					SiNo
						si memoria(n) == " " Entonces // Convinaciones posibles donde gana jugador numero 2
							memoria(n) <- "O";
							turno<-1;
							si memoria(1) == "O" y memoria(2) == "O" y memoria(3) == "O" Entonces
								Escribir "El Jugador numero 2 ha ganado";
								i<-9;
							FinSi
							si memoria(4) == "O" y memoria(5) == "O" y memoria(6) == "O" Entonces
								Escribir "El jugador numero 2 ha ganado";
								i<-9;
							FinSi
							si memoria(7) == "O" y memoria(8) == "O" y memoria(9)=="O" Entonces
								Escribir"El jugador numeros 2 ha ganado";
								i<-9;
							FinSi
							
							si memoria(1) == "O" y memoria(4) == "O" y memoria(7)== "O" Entonces
								Escribir"El jugador numero 2 ha ganado";
								i<-9;
							FinSi
							si memoria(2) == "O" y memoria(5) == "O" y memoria(8)  == "O" Entonces
								Escribir "El jugador numero 2 ha ganado";
								i<-9;
							FinSi
							si memoria(3) == "O" y memoria(6) == "O" y memoria(9) == "O" Entonces
								Escribir"El jugador numero 2 ha ganado";
								i<-9;
							FinSi
							si memoria(1)=="O" y memoria(5)=="O" y memoria(9)== "O" Entonces
								Escribir "El jugador numero 2 ha ganado";
								i<-9;
							FinSi
							si memoria(3)=="O" y memoria(5)=="O" y memoria(7)=="O" Entonces
								Escribir"El jugador numero 2 ha ganado";
								i<-9;
							FinSi
						sino 
							Escribir "Esa posición esta ocupada";
						FinSi
					FinSi
				SiNo
					Escribir " Posición Incorrecta";
					
					
					
				FinSi
				i<- i + 1; 
				
				
			FinMientras
			// consola que se muestra y actualiza mediante ciclo e ingresos
			Escribir " ";
			Escribir "     1||    2||    3 ";
			Escribir "   ",memoria(1),"  ||  ",memoria(2),"  ||  ",memoria(3);
			Escribir " =====++=====++======";
			Escribir "      ||     ||     ";
			Escribir "   ",memoria(4),"  ||  ",memoria(5),"  ||  ",memoria(6);
			Escribir "     4||    5||    6";
			Escribir " =====++=====++======";
			Escribir "      ||     ||     ";
			Escribir "   ",memoria(7),"  ||  ",memoria(8),"  ||  ",memoria(9);
			Escribir "     7||    8||    9";
			Escribir " ";
				
				Escribir "";
				Escribir "";
				Escribir " Desea volver a jugar o ir al menu prncipal";
				Escribir "";
				Escribir " 1- VOLVER A JUGAR ... 0- MENU PRINCIPAL" Sin Saltar;
				
				Repetir										//CICLO PARA CORROBORAR Y VALIDAR SI EL USUARIO QUIERE VOLVER A JUGAR O IR AL MENU PRINCIPAL
					Leer ingresoMenu;
					Si ingresoMenu < 0 o ingresoMenu > 1 Entonces
						Escribir "";
						Escribir " ERROR de ingreso, vuelva a intentarlo -" Sin Saltar;
					FinSi			
				Hasta Que ingresoMenu == 0 o ingresoMenu == 1
				
				Borrar Pantalla;
				
			FinMientras
		FinSi
		
		Borrar Pantalla;
		
	Hasta Que ingreso == 0	
	
	Escribir "";
	Escribir "          $$\      $$\                     $$\                                                                        $$\                  ";                                        
	Escribir "          $$$\    $$$ |                    $$ |                                                                       \__|                   ";                                       
	Escribir "          $$$$\  $$$$ |$$\   $$\  $$$$$$$\ $$$$$$$\   $$$$$$\   $$$$$$$\        $$$$$$\   $$$$$$\  $$$$$$\   $$$$$$$\ $$\  $$$$$$\   $$$$$$$\  ";
	Escribir "          $$\$$\$$ $$ |$$ |  $$ |$$  _____|$$  __$$\  \____$$\ $$  _____|      $$  __$$\ $$  __$$\ \____$$\ $$  _____|$$ | \____$$\ $$  _____|  ";                       
	Escribir "          $$ \$$$  $$ |$$ |  $$ |$$ /      $$ |  $$ | $$$$$$$ |\$$$$$$\        $$ /  $$ |$$ |  \__|$$$$$$$ |$$ /      $$ | $$$$$$$ |\$$$$$$\    ";                         
	Escribir "          $$ |\$  /$$ |$$ |  $$ |$$ |      $$ |  $$ |$$  __$$ | \____$$\       $$ |  $$ |$$ |     $$  __$$ |$$ |      $$ |$$  __$$ | \____$$\   ";                        
	Escribir "          $$ | \_/ $$ |\$$$$$$  |\$$$$$$$\ $$ |  $$ |\$$$$$$$ |$$$$$$$  |      \$$$$$$$ |$$ |     \$$$$$$$ |\$$$$$$$\ $$ |\$$$$$$$ |$$$$$$$  |  ";                       
	Escribir "          \__|     \__| \______/  \_______|\__|  \__| \_______|\_______/        \____$$ |\__|      \_______| \_______|\__| \_______|\_______/  ";                      
	Escribir "                                                                               $$\   $$ |                                                    ";
	Escribir "                                                                               \$$$$$$  |                                                   ";
	Escribir "                                                                                \______/                                                  ";
	Escribir "";
	Escribir "                   $$\   $$\                       $$\                     $$\                                          $$\ $$\ $$\  ";
	Escribir "                   $$ |  $$ |                      $$ |                    $$ |                                         $$ |$$ |$$ |  ";
	Escribir "                   $$ |  $$ | $$$$$$\   $$$$$$$\ $$$$$$\    $$$$$$\        $$ | $$\   $$\  $$$$$$\   $$$$$$\   $$$$$$\  $$ |$$ |$$ |  ";
	Escribir "                   $$$$$$$$ | \____$$\ $$  _____|\_$$  _|   \____$$\       $$ | $$ |  $$ |$$  __$$\ $$  __$$\ $$  __$$\ $$ |$$ |$$ |  ";
	Escribir "                   $$  __$$ | $$$$$$$ |\$$$$$$\    $$ |     $$$$$$$ |      $$ | $$ |  $$ |$$$$$$$$ |$$ /  $$ |$$ /  $$ |\__|\__|\__|  ";
	Escribir "                   $$ |  $$ |$$  __$$ | \____$$\   $$ |$$\ $$  __$$ |      $$ | $$ |  $$ |$$   ____|$$ |  $$ |$$ |  $$ |              ";          
	Escribir "                   $$ |  $$ |\$$$$$$$ |$$$$$$$  |  \$$$$  |\$$$$$$$ |      $$ | \$$$$$$  |\$$$$$$$\ \$$$$$$$ |\$$$$$$  |$$\ $$\ $$\   ";
	Escribir "                   \__|  \__| \_______|\_______/    \____/  \_______|      \__|  \______/  \_______| \____$$ | \______/ \__|\__|\__|  ";
	Escribir "                                                                                                    $$\   $$ |                       ";
	Escribir "                                                                  ****                              \$$$$$$  |                     ";
	Escribir "                                                                 **__**                               \______/                    ";
	Escribir "                                                                 **___**                                                ";                                             
	Escribir "                                                                 **___**         ****                             ";                                            
	Escribir "                                                                 **___**       **___****                             ";                                           
	Escribir "                                                                 **__**       *__* **___**                             ";                                          
	Escribir "                                                                  *__*      *__**   ***__**                            ";        
	Escribir "                                                                  **__*    *__**     **__*                            ";
	Escribir "                                                                   **_**  **_**        **                             ";
	Escribir "                                                                   **___**___**                                      ";
	Escribir "                                                                   *___________*                                   ";                                   
	Escribir "                                                                  *_____________*                                   ";                                 
	Escribir "                                                                 *____0_____0____*                                  ";                         
	Escribir "                                                                 *_______@_______*                                  ";                        
	Escribir "                                                                 *_______________*                                  ";                       
	Escribir "                                                                   *_____v_____*                                   ";                      
	Escribir "                                                                     **_____**                                    ";
	
	Esperar 2 Segundos;
	Borrar Pantalla;
	
FinAlgoritmo
