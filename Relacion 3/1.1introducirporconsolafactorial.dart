/*Ejercicio 6 de la relacion 2 pero pidiendo valores por consola*/

import 'dart:io';

// Creo una función que calcula el factorial de un número entero positivo
int factorial(int n) {
  int f = 1;

  // Multiplico cada número desde 1 hasta n
  for (int i = 1; i <= n; i = i + 1) {
    f = f * i;
  }

  return f;
}

void main() {
  int n = 0;
  bool entradaValida = false;

  // Repito hasta que el usuario introduzca un valor válido
  while (!entradaValida) {
    stdout.write("Introduce un número entero positivo: ");
    //Leo el dato que se introduce
    String? entrada = stdin.readLineSync();

    // Comprobo que no esté vacío ni nulo
    if (entrada != null && entrada.isNotEmpty) {
      try {
        // Lo convierto a entero
        n = int.parse(entrada);

        if (n > 0) {
          entradaValida = true;
        } else {
          print("ERROR. El número debe ser mayor que cero.\n");
        }
      } catch (excepcion1) {
        print("ERROR, introduce un número entero válido.\n");
      }
    } else {
      print("ERROR, no has introducido ningún valor.\n");
    }
  }

  // Llamo a la función
  int resultado = factorial(n);
  print("El factorial de $n es: $resultado");
}
