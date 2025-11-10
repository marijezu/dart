/*7- Haz el pequeño programa en Dart que calcule el factorial de un número n inicializado a
un valor entero y positivo. La función tendrá a n como parámetro de entrada y devolverá el
valor de la suma al punto de la llamada*/

void main(){
  int factorial(int n) {
    int f = 1;
    for (int i = 1; i <= n; i++) f *= i;
    return f;
  }
  print(factorial(5));
}
