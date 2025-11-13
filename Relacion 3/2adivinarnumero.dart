
/*2- Haz un programa Dart “adivina un número entre 1 y 100”. El programa deberá extraer un
número al azar, ir pidiendo al usuario exterior que lo adivine, y darle pistas (“te pasaste”, “te
quedaste corto”), hasta que lo acierte. En ese momento, mostrará una felicitación, así como
el número de intentos que te ha costado acertar.
Probar distintas estrategias. La estrategia más exitosa en promedio es la búsqueda binaria*/


import 'dart:io';
import 'dart:math'; 

void main() {
  // Genero un número aleatorio entre 1 y 100
  int numeroSecreto = Random().nextInt(100) + 1;

  int numeroIntroducido = 0; 
  int numeroIntentos = 0;
  bool adivinado = false;

  print("Tienes que adivinar el numero que estoy pensando del 1 al 100.");

  // Repito hasta que lo adivine
  while (!adivinado) {
    stdout.write("Introduce un numero: ");
    String? entrada = stdin.readLineSync();

    // Compruebo que no este vacio
    if (entrada != null && entrada.isNotEmpty) {
      try {
        numeroIntroducido = int.parse(entrada);
        numeroIntentos = numeroIntentos + 1;

        // Compruebo si está entre 1 y 100
        if (numeroIntroducido < 1 || numeroIntroducido > 100) {
          print("ERROR. El número debe estar entre 1 y 100.\n");
        } else {
          //Si el numero es menor
          if (numeroIntroducido < numeroSecreto) {
            print("El numero que tienes que adivinar es mayor que el introducido\n");
          } else if (numeroIntroducido > numeroSecreto) {
            print("El numero que tienes que adivinar es menor que el introducido\n");
          } else {
            //Si son iguales lo ha adivinado
            adivinado = true;
          }
        }
      } catch (e) {
        print("ERROR, introduce un número entero válido.\n");
      }
    } else {
      print("ERROR, no has introducido ningún valor.\n");
    }
  }

  // Cuando lo adivine imprimo el mensaje
  print("Enhorabuena! Has acertado el número $numeroSecreto en $numeroIntentos intentos.");
}
