/*6- Haz un programa en Dart que contenga una función que calcule la suma de los n
primeros números naturales. La función tendrá un parámetro n y devolverá el valor de la
suma al punto de la llamad*/

int sumaNaturales(int n) {
  int suma = 0;

  // Va sumando cada numero desde el 1 al introducido
  for (int i = 1; i <= n; i++) {
    suma += i;
  }

  return suma;
}

void main() {
  int n = 10;
  int resultado = sumaNaturales(n);

  print("La suma de los $n primeros números naturales es: $resultado");
}