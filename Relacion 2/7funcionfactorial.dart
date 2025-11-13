/*7- Haz el pequeño programa en Dart que calcule el factorial de un número n inicializado a
un valor entero y positivo. La función tendrá a n como parámetro de entrada y devolverá el
valor de la suma al punto de la llamada*/

int factorial(int n) {
  int f = 1;

  // Va multiplicando cada numero y lo acumula en f
  for (int i = 1; i <= n; i++) {
    f = f * i; 
  }

  return f;
}

void main() {
  int n = 5;
  int resultado = factorial(n);

  print("El factorial de $n es: $resultado");
}