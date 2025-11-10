/*9- Haz en Dart el programa que invoca a dos funciones, una que calcula el cociente de la
división entre dos números enteros positivos utilizando el algoritmo de Euclides y la otra que
calcula el resto. Los dos números serán parámetros de entrada, y la función devolverá el
resultado al punto de la llamada. Ambos números serán inicializados en el propio programa.*/

void main(){
  int cocientePorRestas(int a, int b) {
    int q = 0;
    int r = a;
    while (r >= b) {
      r -= b;
      q++;
    }
    return q;
  }

  print(cocientePorRestas(18, 5));

  int restoPorRestas(int a, int b) {
    int r = a;
    while (r >= b) {
      r -= b;
    }
    return r;
  }
  print(restoPorRestas(18, 5));

}