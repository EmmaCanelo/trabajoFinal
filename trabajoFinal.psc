Algoritmo trabajo_final
	Definir ingreso Como Entero // Definicion de variables del ingreso al menu principal
	
	Definir ingresoval, puntajeCompu, puntajeUser, valCompu, valUser Como Entero // Definicion de variables del juego 1
	
	Definir inicioHome, oportunidades, aciertos, turno, longPalabra, cont Como Entero //Definicion de variables del juego 2
	Definir arrayPalabras, arrayCasillas, arrayIngreso, letraUser, letraPalabra, letraUtilizada, cabeza, cabezaArriba, cuerpo, manoDerecha, manoIzquierda, pieDerecho, pieIzquierdo Como Caracter //Definicion de variables del juego 2
	Definir letraEcontrada, letraDuplicada Como Logico //Definicion de variables del juego 2
	
	Escribir ""
	Escribir ""
	Escribir ""
	Escribir "                          $$$$$$$\  $$\                                                   $$\       $$\                  "                    
	Escribir "                          $$  __$$\ \__|                                                  \__|      $$ |                   "                   
	Escribir "                          $$ |  $$ |$$\  $$$$$$\  $$$$$$$\ $$\    $$\  $$$$$$\  $$$$$$$\  $$\  $$$$$$$ | $$$$$$\   $$$$$$$\  "
	Escribir "                          $$$$$$$\ |$$ |$$  __$$\ $$  __$$\\$$\  $$  |$$  __$$\ $$  __$$\ $$ |$$  __$$ |$$  __$$\ $$  _____| "
	Escribir "                          $$  __$$\ $$ |$$$$$$$$ |$$ |  $$ |\$$\$$  / $$$$$$$$ |$$ |  $$ |$$ |$$ /  $$ |$$ /  $$ |\$$$$$$\   "
	Escribir "                          $$ |  $$ |$$ |$$   ____|$$ |  $$ | \$$$  /  $$   ____|$$ |  $$ |$$ |$$ |  $$ |$$ |  $$ | \____$$\  "
	Escribir "                          $$$$$$$  |$$ |\$$$$$$$\ $$ |  $$ |  \$  /   \$$$$$$$\ $$ |  $$ |$$ |\$$$$$$$ |\$$$$$$  |$$$$$$$  | "
	Escribir "                          \_______/ \__| \_______|\__|  \__|   \_/     \_______|\__|  \__|\__| \_______| \______/ \_______/  "
	Escribir ""
	Escribir "                                                                     $$$$$$\                                            "                                               
	Escribir "             ****                                                    $$  __$$\                                   ****     "                                              
	Escribir "            **__**                                                   $$ /  $$ |                                 **__**     "                                              
	Escribir "            **___**                                                  $$$$$$$$ |                                 **___**     "                                             
	Escribir "            **___**         ****                                     $$  __$$ |                                 **___**         ****   "                                            
	Escribir "            **___**       **___****                                  $$ |  $$ |                                 **___**       **___****  "                                           
	Escribir "            **__**       *__* **___**                                $$ |  $$ |                                 **__**       *__* **___**  "                                          
	Escribir "             *__*      *__**   ***__**                               \__|  \__|                                  *__*      *__**   ***__**  "        
	Escribir "             **__*    *__**     **__*                                                                            **__*    *__**     **__*  "
	Escribir "              **_**  **_**        **                                                                              **_**  **_**        **  "
	Escribir "               **___**___**                                                                                       **___**___**     "
	Escribir "               *___________*                  $$$$$$$\  $$\                         $$$$$$\                       *___________*     "                                   
	Escribir "              *_____________*                 $$  __$$\ $$ |                        \_$$  _|                     *_____________*     "                                 
	Escribir "             *____0_____0____*                $$ |  $$ |$$ | $$$$$$\  $$\   $$\       $$ |  $$$$$$$\            *____0_____0____*    "                         
	Escribir "             *_______@_______*                $$$$$$$  |$$ | \____$$\ $$ |  $$ |      $$ |  $$  __$$\           *_______@_______*    "                        
	Escribir "             *_______________*                $$  ____/ $$ | $$$$$$$ |$$ |  $$ |      $$ |  $$ |  $$ |          *_______________*   "                       
	Escribir "               *_____v_____*                  $$ |      $$ |$$  __$$ |$$ |  $$ |      $$ |  $$ |  $$ |            *_____v_____*    "                      
	Escribir "                 **_____**                    $$ |      $$ |\$$$$$$$ |\$$$$$$$ |$$\ $$$$$$\ $$ |  $$ |              **_____**     "
	Escribir "                                              \__|      \__| \_______| \____$$ |\__|\______|\__|  \__|   "                       
	Escribir "                                                                      $$\   $$ |                        "                                            
	Escribir "                                                                      \$$$$$$  |                       "                                             
	Escribir "                                                                       \______/                       "                                           
	Escribir  ""
	Escribir ""
	Escribir ""
	Escribir "                                                                    PRESIONE INTRO  "
	Escribir ""
	
	Esperar Tecla
	Borrar Pantalla
	
	Repetir		
		Repetir         //Ciclo para validar el ingreso
			Escribir ""
			Escribir " MENÚ DE JUEGOS: "
			Escribir ""
			Escribir " 1 -> Piedra, Papel o Tijera "
			Escribir " 2 -> Ahorcado"
			Escribir " 3 ->"
			Escribir " 4 ->"
			Escribir " 0 -> Finalizar sesion"
			Escribir ""
			Escribir " Elija la opción que más desee -" Sin Saltar
			Leer ingreso
			Si ingreso < 0 o ingreso > 4 Entonces 				//Validacion de lo ingresado por el usuario (debe ser entre 0 y 4)
				Escribir ""
				Escribir " **ERROR DE INGRESO** - presione una tecla para volver a intentarlo"
				Esperar Tecla
			FinSi
			Borrar Pantalla
		Hasta Que ingreso >= 0 y ingreso <= 4
		
		Si ingreso == 1 Entonces    //Opcion para el primer juego
			
			puntajeCompu = 0 //Inicializacion de los puntajes
			puntajeUser = 0	
			
			Repetir   //Ciclo para validar el ingreso
				Escribir ""
				Escribir " Bienvenido al Piedra, Papel o Tijera"
				Escribir ""
				Escribir " Presione la opcion deseada:"
				Escribir ""
				Escribir " 1- JUGAR ... 0- MENU PRINCIPAL " Sin Saltar
				Leer ingresoval
				Si ingresoval < 0 o ingresoval > 1 Entonces    //Validacion de lo ingresado por el usuario (debe ser entre 0 y 3)
					Escribir ""
					Escribir " **ERROR DE INGRESO** - presione una tecla para volver a intentarlo"
					Esperar Tecla
					Borrar Pantalla
				FinSi
			Hasta Que ingresoval == 0 o ingresoval == 1	
			Borrar Pantalla
			
			Mientras ingresoval == 1 Hacer		//CICLO PARA QUE SI EL INGRESO ES 1, SE EJECUTE EL JUEGO SINO VUELVA AL MENU		
				
				Repetir 				//CICLO DEL JUEGO, QUE SE MANTENDRA ACTIVO MIENTRAS NO HAYA UN GANADOR		
					
					Repetir 
						Escribir " Presione la opcion deseada:"
						Escribir ""
						Escribir " 1 -> Piedra , 2 -> Papel , 3 -> Tijera " Sin Saltar	
						Leer valUser
						Si valUser < 1 o valUser > 3 Entonces         //Validacion de lo ingresado por el usuario (debe ser entre 0 y 3)
							Escribir ""
							Escribir " **ERROR DE INGRESO** - presione una tecla para volver a intentarlo"
							Esperar Tecla
							Borrar Pantalla
						FinSi
					Hasta Que valUser >= 1 y valUser <= 3	
						
					valCompu = azar(3)+1	  //Numero al azar que se va a utilizar para compararlo con el ingresado por usuario	
					
					Si valUser == valCompu  Entonces  //Validacion para la opcion de empate
						Escribir ""
						Segun valCompu Hacer
							1:
								Escribir " Empate, los dos elejimos piedra"
							2:
								Escribir " Empate, los dos elejimos papel" 
							3:
								Escribir " Empate, los dos elejimos tijera"
						FinSegun	
						Escribir ""
						Escribir " Presione una tecla para continuar"
						Esperar Tecla
					SiNo
						Si valUser == 1 Entonces     //Opcion de ingreso por el usuario - 1
							Escribir ""
							Segun valCompu Hacer     //segun el numero al azar se muestra el resultado
								2:
									Escribir " Punto para nosotros, elejimos papel y vos piedra" 
									puntajeCompu = puntajeCompu + 1
								3:
									Escribir " Punto para vos, elejimos tijera vos piedra"
									puntajeUser = puntajeUser + 1
							FinSegun
							Escribir ""
							Escribir " Presione una tecla para continuar"
							Esperar Tecla
						SiNo
							Si valUser == 2 Entonces    //Opcion de ingreso por el usuario - 2
								Escribir ""
								Segun valCompu Hacer     //segun el numero al azar se muestra el resultado
									1:
										Escribir " Punto para vos, elejimos piedra y vos papel"
										puntajeUser = puntajeUser + 1
									3:
										Escribir " Punto para nosotros, elejimos tijera y vos papel"
										puntajeCompu = puntajeCompu + 1
								FinSegun
								Escribir ""
								Escribir " Presione una tecla para continuar"
								Esperar Tecla
							SiNo       //Opcion de ingreso por el usuario - 3
								Escribir ""
								Segun valCompu Hacer   //segun el numero al azar se muestra el resultado
									1:
										Escribir " Punto para nosotros, elejimos piedra y vos tijera"
										puntajeCompu = puntajeCompu + 1
									2:
										Escribir " Punto para vos, elejimos papel y vos tijera"
										puntajeUser = puntajeUser + 1
								FinSegun
								Escribir ""
								Escribir " Presione una tecla para continuar"
								Esperar Tecla
							FinSi				
						Fin Si
					Fin Si	
				 
					Borrar Pantalla
					
					Si puntajeUser == 3 Entonces				//Valido si el juego llegó a su fin, con el usuario como ganador
						Escribir ""
						Escribir " FELICITACIONES! has ganado ", puntajeUser, " a ", puntajeCompu	
						Escribir ""
						Escribir " Presione una tecla para volver al menú principal"
						Esperar Tecla
					SiNo
						Si puntajeCompu == 3 Entonces         //Valido si el juego llegó a su fin, con nosotros como ganadores
							Escribir ""
							Escribir " UPS! has perdido ", puntajeCompu, " a ", puntajeUser
							Escribir ""
							Escribir " Presione una tecla para volver al menú principal"
							Esperar Tecla
						SiNo	           //Al no haber ganadores, el juego continua y se vulven a mostrar los mensajes como el tanteador
							
							Escribir " * TANTEADOR:  Nosotros ", puntajeCompu , " / vos ", puntajeUser, " *"
							Escribir ""
							
						Fin Si
					Fin Si	
					
				Hasta Que puntajeCompu == 3 o puntajeUser == 3
				
				Borrar Pantalla
				
				Repetir   //Ciclo para validar el ingreso
					Escribir ""
					Escribir " Bienvenido al Piedra, Papel o Tijera"
					Escribir ""
					Escribir " Presione la opcion deseada:"
					Escribir ""
					Escribir " 1- JUGAR DE NUEVO ... 0- MENU PRINCIPAL " Sin Saltar
					Leer ingresoval
					Si ingresoval < 0 o ingresoval > 1 Entonces    //Validacion de lo ingresado por el usuario (debe ser entre 0 y 3)
						Escribir ""
						Escribir " **ERROR DE INGRESO** - presione una tecla para volver a intentarlo"
						Esperar Tecla
						Borrar Pantalla
					FinSi
				Hasta Que ingresoval == 0 o ingresoval == 1	
				
			FinMientras
			
		FinSi
		
		Si ingreso == 2 Entonces   //JUEGO 2
			
			Escribir ""
			Escribir " BIENVENIDOS AL AHORCADO"
			Escribir ""
			Escribir " Desea jugar o volver al menu prncipal"
			Escribir ""
			Escribir " 1- JUGAR ... 0- MENU PRINCIPAL " Sin Saltar
			
			Repetir					//CICLO DE VALIDACION DE INGRESO
				Leer inicioHome
				Si inicioHome < 0 o inicioHome > 1 Entonces
					Escribir ""
					Escribir " ERROR de ingreso, vuelva a intentarlo -" Sin Saltar
				FinSi			
			Hasta Que inicioHome == 0 o inicioHome == 1
			Borrar Pantalla
			
			Dimension arrayPalabras[20];                   //ARRAY DE PALABRAS PARA ADIVINAR
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
			
			Dimension arrayIngreso[27]           //ARRAY PARA ALMACENAR LAS LETRAS QUE YA INGRESO EL USUARIO, SE PUSO 27 QUE SON EL TOTAL DE LETRAS DEL ABCEDARIO
			
			Dimension arraycasillas[12]   //ARRAY PARA LUEGO DIBUJAR LAS LINEAS CON LA CANTIDAD DE LETRAS DE LA PALABRA, TOMA EL VALOR 12 QUE VA A SER EL MAXIMO DE LETRAS QUE TIENEN ALGUNAS PALABRAS
         
			
			Mientras inicioHome == 1 Hacer    //CICLO PARA QUE SI EL INGRESO ES 1, SE EJECUTE EL JUEGO SINO VUELVA AL MENU
				
				//INICIALIZACION DE VARIABLES EN BLANCO, POQRUE SI QUIERE VOLVER A JUGAR QUEDA EL VALOR GUARDADO
				cabezaArriba = ""
				cabeza = ""
				cuerpo = ""
				manoDerecha = ""
				manoIzquierda = "";
				pieDerecho = "";
				pieIzquierdo = "";
				cont = 0
				oportunidades = 7;
				turno = 0;
				aciertos = 0;
				
				//INICIALIZO EL ARRAY EN BLANCO, POQRUE SI QUIERE VOLVER A JUGAR QUEDA EL PRIMER VALOR GUARDADO
				Para i=1 Hasta 27 Con Paso 1 Hacer    
					arrayIngreso[i] =" " 
				FinPara
				
				letraEcontrada = Verdadero
				
				palabra = arrayPalabras[Azar(20)+1]   //ELIJE AL AZAR UNA POSICION DEL ARRAY DE LAS PALBRAS Y SE PONE +1 PORQUE SINO PUEDE QUE ELIJA 0
				longPalabra <- Longitud(palabra)	   //CALCULA LA CANTIDAD DE LETRAS DE LA PALABRA SELECCIONADA
				
				Para i=1 Hasta longPalabra Con Paso 1 Hacer    //CICLO PARA ALMACENAR LAS LINEAS DE LAS LETRAS DE LA PALABRA
					arraycasillas[i] = '_';
				FinPara
				Escribir ""
				Escribir " Oportunidades restantes: ", oportunidades
				
				Repetir  //CICLO QUE SE MANTENDRA ACTIVO HASTA QUE oportunidades == 1 O aciertos == longPalabra;
					
					Escribir ""
					
					Si letraEcontrada == falso Entonces   //SI LA LETRA ESINCORRECTA, RESTAMOS OPORTUNIDADES Y ASIGNAMOS VALORES AL CUERPO DEL MUÑECO
						Borrar Pantalla
						turno = turno + 1
						oportunidades = oportunidades - 1
						Escribir " Oportunidades restantes: ", oportunidades
						Escribir ""
						Escribir " Letra no encontrada."
						Escribir ""
						Segun turno Hacer
							1:
								cabezaArriba = " ___"
								cabeza = "|___|"
							2:
								cuerpo = " | "
							3:
								manoDerecha = "\"
							4:
								manoIzquierda = "/";
							5:
								pieDerecho = "\";
							6:
								pieIzquierdo = "/";
						FinSegun
						
					FinSI
					
					//DIBUJAMOS EL CUERPO DEL MUÑECO
					Escribir "  -------|"
					Escribir " |     ", cabezaArriba
					Escribir " |     ", cabeza
					Escribir " |      ", cuerpo
					Escribir " |     ",manoIzquierda, cuerpo, manoDerecha 
					Escribir " |    ",manoIzquierda," ", cuerpo, " " manoDerecha 
					Escribir " |      ", cuerpo
					Escribir " |     ", pieIzquierdo,"   ", pieDerecho
					Escribir " |    ", pieIzquierdo,"     ", pieDerecho
					Escribir " |"
					Escribir "  ---------------"
					Escribir ""
					
					Para i=1 Hasta longPalabra Con Paso 1 Hacer   //CICLO PARA DIBUJAR LAS LENIAS DE LETRAS DE LA PALABRA SECRETA
						Escribir " ", arrayCasillas[i] Sin Saltar
					FinPara
					
					cont = cont + 1
					
					Escribir "" 
					Escribir ""
					Escribir " Letras utilizadas:" Sin Saltar
					Para i = 1 Hasta cont Con Paso 1 Hacer			//CICLO PARA MOSTRAR LAS LETRAS UTILIZADAS
						Escribir Sin Saltar " - ", arrayIngreso[i]				
					FinPara	
					
					Escribir ""
					Escribir ""
					Escribir " Escriba una letra: " Sin Saltar
					Repetir									//CICLO PARA VALIDAR EL INGRESO DE LAS LETRAS POR PARTE DEL USUARIO
						
						Repetir                                //CICLO PARA VALIDAR QUE NO SE INGRESE UN ESPACIO EN BLANCO CON EL ENTER
							Leer letraUser
							Si letraUser == "" Entonces
								Escribir " Ingrese una letra, no se permite darle al enter"
							FinSi
						Hasta Que letraUser <> ""		
						
						letraUser = Mayusculas(letraUser)  //PASO A MAYUSCULAS LA LETRA INGRESADA
						letraDuplicada = falso
						
						Si cont == 1 Entonces
							arrayIngreso[cont] = letraUser
							letraDuplicada = Falso
						SiNo
							Para i = 1  Hasta cont -1 Con Paso 1 Hacer       //CICLO PARA CORROBORAR QUE LA LETRA INGRESADA NO SE A UTILIZADO 
								
								Si arrayIngreso[i] == letraUser Entonces
									Escribir " Letra ya ingresada, vuelva a ingresar otra -" Sin Saltar
									letraDuplicada = Verdadero
								FinSi						
								
							FinPara
						FinSi
						
						Si letraDuplicada == Falso Entonces      //SI LA LETRA NO SE UTILIZO, SE ALMACENA EN EL ARRAY
							arrayIngreso[cont] = letraUser
							letraDuplicada = Falso
							letraEcontrada = Verdadero
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
								Borrar Pantalla
								Escribir " Oportunidades restantes: ", oportunidades
							FinSi
						FinSi
					FinPara						
					
				Hasta Que oportunidades == 1 O aciertos == longPalabra;
				
				Borrar Pantalla
				
				Si aciertos == longPalabra Entonces     //SE MUESTRA EL RESULTADO EN CASO DE SER GANADOR
					Escribir ""
					Escribir " Felicidades, has ganado.";
				Sino								  	//SE MUESTRA EL RESULTADO EN CASO DE SER PERDEDOR JUNTO AL MUÑECO COLGADO	
					Escribir ""
					Escribir "  -------|"
					Escribir " |     ", cabezaArriba
					Escribir " |     ", cabeza
					Escribir " |   ---------"
					Escribir " |      ", cuerpo
					Escribir " |     ",manoIzquierda, cuerpo, manoDerecha 
					Escribir " |    ",manoIzquierda," ", cuerpo, " " manoDerecha 
					Escribir " |      ", cuerpo
					Escribir " |     ", pieIzquierdo,"   ", pieDerecho
					Escribir " |    ", pieIzquierdo,"     ", pieDerecho
					Escribir " |"
					Escribir "  ---------------"
					Escribir ""
					Escribir " Has perdido.";
				FinSi
				
				Escribir ""
				Escribir " La palabra secreta era: ", palabra;
				Escribir ""
				Escribir ""
				Escribir " Desea volver a jugar o ir al menu prncipal"
				Escribir ""
				Escribir " 1- VOLVER A JUGAR ... 0- MENU PRINCIPAL" Sin Saltar
				
				Repetir										//CICLO PARA CORROBORAR Y VALIDAR SI EL USUARIO QUIERE VOLVER A JUGAR O IR AL MENU PRINCIPAL
					Leer inicioHome
					Si inicioHome < 0 o inicioHome > 1 Entonces
						Escribir ""
						Escribir " ERROR de ingreso, vuelva a intentarlo -" Sin Saltar
					FinSi			
				Hasta Que inicioHome == 0 o inicioHome == 1
				
				Borrar Pantalla
				
			FinMientras			
			
		FinSi
		
		Si ingreso == 3 Entonces
			Escribir "juego 3"
		FinSi
		
		Si ingreso == 4 Entonces
			Escribir "juego 4"
		FinSi
		
		Borrar Pantalla
		
	Hasta Que ingreso == 0	
	
	Escribir ""
	Escribir "          $$\      $$\                     $$\                                                                        $$\                  "                                        
	Escribir "          $$$\    $$$ |                    $$ |                                                                       \__|                   "                                       
	Escribir "          $$$$\  $$$$ |$$\   $$\  $$$$$$$\ $$$$$$$\   $$$$$$\   $$$$$$$\        $$$$$$\   $$$$$$\  $$$$$$\   $$$$$$$\ $$\  $$$$$$\   $$$$$$$\  "
	Escribir "          $$\$$\$$ $$ |$$ |  $$ |$$  _____|$$  __$$\  \____$$\ $$  _____|      $$  __$$\ $$  __$$\ \____$$\ $$  _____|$$ | \____$$\ $$  _____|  "                       
	Escribir "          $$ \$$$  $$ |$$ |  $$ |$$ /      $$ |  $$ | $$$$$$$ |\$$$$$$\        $$ /  $$ |$$ |  \__|$$$$$$$ |$$ /      $$ | $$$$$$$ |\$$$$$$\    "                         
	Escribir "          $$ |\$  /$$ |$$ |  $$ |$$ |      $$ |  $$ |$$  __$$ | \____$$\       $$ |  $$ |$$ |     $$  __$$ |$$ |      $$ |$$  __$$ | \____$$\   "                        
	Escribir "          $$ | \_/ $$ |\$$$$$$  |\$$$$$$$\ $$ |  $$ |\$$$$$$$ |$$$$$$$  |      \$$$$$$$ |$$ |     \$$$$$$$ |\$$$$$$$\ $$ |\$$$$$$$ |$$$$$$$  |  "                       
	Escribir "          \__|     \__| \______/  \_______|\__|  \__| \_______|\_______/        \____$$ |\__|      \_______| \_______|\__| \_______|\_______/  "                      
	Escribir "                                                                               $$\   $$ |                                                    "
	Escribir "                                                                               \$$$$$$  |                                                   "
	Escribir "                                                                                \______/                                                  "
	Escribir ""
	Escribir "                   $$\   $$\                       $$\                     $$\                                          $$\ $$\ $$\  "
	Escribir "                   $$ |  $$ |                      $$ |                    $$ |                                         $$ |$$ |$$ |  "
	Escribir "                   $$ |  $$ | $$$$$$\   $$$$$$$\ $$$$$$\    $$$$$$\        $$ | $$\   $$\  $$$$$$\   $$$$$$\   $$$$$$\  $$ |$$ |$$ |  "
	Escribir "                   $$$$$$$$ | \____$$\ $$  _____|\_$$  _|   \____$$\       $$ | $$ |  $$ |$$  __$$\ $$  __$$\ $$  __$$\ $$ |$$ |$$ |  "
	Escribir "                   $$  __$$ | $$$$$$$ |\$$$$$$\    $$ |     $$$$$$$ |      $$ | $$ |  $$ |$$$$$$$$ |$$ /  $$ |$$ /  $$ |\__|\__|\__|  "
	Escribir "                   $$ |  $$ |$$  __$$ | \____$$\   $$ |$$\ $$  __$$ |      $$ | $$ |  $$ |$$   ____|$$ |  $$ |$$ |  $$ |              "          
	Escribir "                   $$ |  $$ |\$$$$$$$ |$$$$$$$  |  \$$$$  |\$$$$$$$ |      $$ | \$$$$$$  |\$$$$$$$\ \$$$$$$$ |\$$$$$$  |$$\ $$\ $$\   "
	Escribir "                   \__|  \__| \_______|\_______/    \____/  \_______|      \__|  \______/  \_______| \____$$ | \______/ \__|\__|\__|  "
	Escribir "                                                                                                    $$\   $$ |                       "
	Escribir "                                                                  ****                              \$$$$$$  |                     "
	Escribir "                                                                 **__**                               \______/                    "
	Escribir "                                                                 **___**                                                "                                             
	Escribir "                                                                 **___**         ****                             "                                            
	Escribir "                                                                 **___**       **___****                             "                                           
	Escribir "                                                                 **__**       *__* **___**                             "                                          
	Escribir "                                                                  *__*      *__**   ***__**                            "        
	Escribir "                                                                  **__*    *__**     **__*                            "
	Escribir "                                                                   **_**  **_**        **                             "
	Escribir "                                                                   **___**___**                                      "
	Escribir "                                                                   *___________*                                   "                                   
	Escribir "                                                                  *_____________*                                   "                                 
	Escribir "                                                                 *____0_____0____*                                  "                         
	Escribir "                                                                 *_______@_______*                                  "                        
	Escribir "                                                                 *_______________*                                  "                       
	Escribir "                                                                   *_____v_____*                                   "                      
	Escribir "                                                                     **_____**                                    "
	
	Esperar 2 Segundos
	Borrar Pantalla	
	
FinAlgoritmo
