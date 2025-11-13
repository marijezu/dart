/*9- Haz en Dart el programa que invoca a dos funciones, una que calcula el cociente de la
división entre dos números enteros positivos utilizando el algoritmo de Euclides y la otra que
calcula el resto. Los dos números serán parámetros de entrada, y la función devolverá el
resultado al punto de la llamada. Ambos números serán inicializados en el propio programa.*/

int cocientePorRestas(int dividendo, int divisor) {
  int cociente = 0;
  int resto = dividendo;

  while (resto >= divisor) {
    resto = resto - divisor;   
    cociente = cociente + 1; 
  }

  return cociente;
}

int restoPorRestas(int dividendo, int divisor) {
  int resto = dividendo;

  while (resto >= divisor) {
    //Resto el divisor hasta que el resto sea menor
    resto = resto - divisor;
  }

  return resto;
}

void main() {
  int num1 = 13;
  int num2 = 5;

  int cociente = cocientePorRestas(num1, num2);
  int resto = restoPorRestas(num1, num2);

  print("Dividiendo $num1 entre divisor $num2:");
  print("Cociente = $cociente");
  print("Resto = $resto");
}
