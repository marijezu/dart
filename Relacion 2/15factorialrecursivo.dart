/*15- Lo mismo con el ejercicio 7*/

void main() {
  int n = 5;
  int resultado = factorialRecursivo(n);
  print("El factorial de $n es: $resultado");
}

int factorialRecursivo(int n) {
  // Este es el caso base
  if (n == 1) {
    return 1;
  } else {
    //Devuelve el numero multiplicado por el factorial del numero anterior
    return n * factorialRecursivo(n - 1);
  }
}
