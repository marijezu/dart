/*8- Haz en Dart el programa que invoca a una función que calcula el MCD de dos números
enteros positivos utilizando el algoritmo de Euclides. Los dos números serán parámetros de
entrada, y la función devolverá el resultado al punto de la llamada. Ambos números serán
inicializados en el propio programa.*/

int mcd(int a, int b) {
  while (b != 0) {
    //Calculo el resto de la division
    final r = a % b;
    //El divisor pasa a ser el nuevo dividendo
    a = b;
    //El resto pasa a ser el nuevo divisor
    b = r;
  }
  return a;
}

void main() {
  int num1 = 12;
  int num2 = 7;

  int resultado = mcd(num1, num2);

  print("El MCD de $num1 y $num2 es: $resultado");
}

