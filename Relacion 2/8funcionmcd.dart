/*8- Haz en Dart el programa que invoca a una función que calcula el MCD de dos números
enteros positivos utilizando el algoritmo de Euclides. Los dos números serán parámetros de
entrada, y la función devolverá el resultado al punto de la llamada. Ambos números serán
inicializados en el propio programa.*/

void main(){
  int mcd(int a, int b) {
    while (b != 0) {
      final r = a % b;
      a = b;
      b = r;
    }
    return a;
  }

  print(mcd(2, 6));
}

