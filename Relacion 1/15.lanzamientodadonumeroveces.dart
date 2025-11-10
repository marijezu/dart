/*15- Versiona el programa anterior para que simule el lanzamiento de un dado un número n
de veces (n>100) y muestre la frecuencia con la que se ha obtenido cada resultado.*/

import 'dart:math';

void main() {
  int n = 200; // número de lanzamientos (mayor de 100)
  Random random = Random();

  // Creamos contadores para cada cara del dado
  int uno = 0;
  int dos = 0;
  int tres = 0;
  int cuatro = 0;
  int cinco = 0;
  int seis = 0;

  // Hacemos los lanzamientos
  for (int i = 1; i <= n; i++) {
    int dado = random.nextInt(6) + 1; // genera número entre 1 y 6

    // Sumo 1 al contador segun el numero que contenga la cara del dado
    if (dado == 1) 
      uno++;
    else if (dado == 2) 
      dos++;
    else if (dado == 3) 
      tres++;
    else if (dado == 4) 
      cuatro++;
    else if (dado == 5) 
      cinco++;
    else
      seis++;
  }

  // Muestro los resultados
  print("Resultados después de $n lanzamientos:");
  print("1: $uno veces");
  print("2: $dos veces");
  print("3: $tres veces");
  print("4: $cuatro veces");
  print("5: $cinco veces");
  print("6: $seis veces");


//SI QUEREMOS HACER UNA VERSION DE UN DADO TRUCADO EN EL QUE QUEREMOS
//QUE LA CARA 6 TENGA MAS POSIBILIDADES DE SALIR EN CONCRETO 3 MAS LO 
//PODRIAMOS HACER ASI:

  int lanzamiento = 200; // número de lanzamientos
  Random numeroaleatorio = Random();

  int unotrucado= 0, dostrucado = 0, trestrucado = 0, cuatrotrucado = 0, cincotrucado = 0, seistrucado = 0;

  for (int j = 1; j <= lanzamiento; j++) {
    // Genero un número aleatorio del 1 al 9
    int dado = numeroaleatorio.nextInt(9) + 1;

    // Si el número es 7, 8 o 9 lo considero como un 6
    if (dado > 6) {
      dado = 6;
    }

    // Contamos cuántas veces sale cada número
    if (dado == 1) unotrucado++;
    else if (dado == 2) dostrucado++;
    else if (dado == 3) trestrucado++;
    else if (dado == 4) cuatrotrucado++;
    else if (dado == 5) cincotrucado++;
    else seistrucado++;
  }

  // Mostramos resultados
  print("Resultados tras $n lanzamientos del dado trucado:");
  print("1: $uno");
  print("2: $dos");
  print("3: $tres");
  print("4: $cuatro");
  print("5: $cinco");
  print("6 (trucado): $seis");


}