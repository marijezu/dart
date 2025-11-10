/*12- Calcula en Dart el MCD de dos números enteros positivos utilizando el algoritmo de
Euclides*/

void main() {
  int a = 48; 
  int b = 18; 

  print("Calculo el MCD de $a y $b...");

  // Algoritmo de Eulides
  while (b != 0) {
    int resto = a % b; // calculo el resto de la división
    a = b;             // el divisor pasa a ser el nuevo dividendo
    b = resto;         // el resto pasa a ser el nuevo divisor
  }

  print("El MCD es: $a");
}
