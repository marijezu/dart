/*14- Haz una nueva versión del ejercicio 6, esta vez con una función RECURSIVA*/
/*El ejercicio 6 decía: 6- Haz un programa en Dart que contenga una función que calcule la suma de los n
primeros números naturales. La función tendrá un parámetro n y devolverá el valor de la
suma al punto de la llamada*/

int sumaNaturalesRecursiva(int n) {
  //Este es el caso base
  if (n == 1) {
    return 1;
  } else {
    // devuelve n mas la suma de los anteriores
    return n + sumaNaturalesRecursiva(n - 1);
  }
}

void main() {
  int n = 10;
  print("La suma de los $n primeros números naturales es: ${sumaNaturalesRecursiva(n)}");
}


