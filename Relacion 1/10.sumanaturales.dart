/*10- Haz un programa en Dart que calcule la suma de los n primeros números naturales. El
valor de n será inicializado en el propio programa.*/

void main() {
  int n = 5; 
  int suma = 0;

  for (int i = 1; i <= n; i++) {
    suma = suma + i; 
  }

  print("La suma de los $n primeros números naturales es: $suma");
}
