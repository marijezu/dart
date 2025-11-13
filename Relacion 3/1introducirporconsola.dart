/*Volveremos a versionar el ejercicio 6 de la relación (II) que calculaba la suma de los n
primeros números naturales, pero esta vez, el valor de n será solicitado por consola.

6- Haz un programa en Dart que contenga una función que calcule la suma de los n
primeros números naturales. La función tendrá un parámetro n y devolverá el valor de la
suma al punto de la llamad*/

import 'dart:io';

// Creo una función que calcula la suma de los n primeros números naturales
int sumaNaturales(int n) {
  int suma = 0;

  // Voy sumando desde 1 hasta n
  for (int i = 1; i <= n; i = i + 1) {
    suma = suma + i;
  }

  return suma;
}

void main() {
  int n = 0; 
  bool entradaValida = false; 

  // Repito hasta que se introduzca un número válido
  while (!entradaValida) {
    stdout.write("Introduce un número entero positivo: ");
    //Leo lo que escribe el usuario
    String? entrada = stdin.readLineSync();

    // Compruebo que la entrada no sea nula ni vacía
    if (entrada != null && entrada.isNotEmpty) {
      // Intento convertir la cadena a número
      try {
        n = int.parse(entrada);

        if (n > 0) {
          entradaValida = true;
        } else {
          print("Tienes que introducir un numero entero mayor que 0\n");
        }
      } catch (exception1) {
        //Si hay un error al convertirlo a int
        print("ERROR, introduce un número entero válido.\n");
      }
    } else {
      print("No se ha introducido ningún valor.\n");
    }
  }

  // Llamo a la funcion
  int resultado = sumaNaturales(n);
  print("La suma de los $n primeros números naturales es: $resultado");
}