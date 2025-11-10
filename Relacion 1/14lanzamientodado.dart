/*14- Haz un pequeño programa en Dart que simule el lanzamiento de un dado. Investiga la librería ‘dart:math’ en la documentación oficial*/

import 'dart:math';

void main() {
  // Genero numeros aleatorios
  Random numerosaleatorios = Random();

  // nextInt(6) genera del 0 al 5 por eso tengo que sumar 1 para
  // que sea del 1 al 6 los numeros de cada cara del dado
  for (int i = 1; i <= 5; i++) {
    int dado = numerosaleatorios.nextInt(6) + 1;
    print("Lanzamiento $i: $dado");
};
}

