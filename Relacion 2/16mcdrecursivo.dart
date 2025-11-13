
// 16- Ídem con el ejercicio 8
void main() {
  int mcdRecursivo(int a, int b) {
    //Caso base
    //Si b es cero el MCD es a
    if (b == 0) {
      return a;
    } else {
    // Cambio los valores el primero pasa a ser el segundo y el segundo el primero
      return mcdRecursivo(b, a % b);
    }
  }

  int resultado = mcdRecursivo(18, 24);
  print("El MCD es: $resultado");
}
