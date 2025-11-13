// 17- Ídem con el ejercicio 9


void main() {
  // Creo una funcion recursiva para calcular el cociente
  int cocienteRecursivo(int a, int b) {
    // Caso base: si 'a' es menor que 'b', ya no se puede restar más con lo cual el cociente 0
    if (a < b) {
      return 0;
    } else {
      // Si 'a' es mayor o igual que 'b', restamos una vez y sumamos 1 al cociente
      return 1 + cocienteRecursivo(a - b, b);
    }
  }

  // Creo una funcion recursiva que calcula el resto
  int restoRecursivo(int a, int b) {
    // Caso base: cuando 'a' es menor que 'b' ese valor de 'a' es el resto
    if (a < b) {
      return a;
    } else {
      // Si 'a' es mayor o igual que 'b' resto y sigo llamando
      return restoRecursivo(a - b, b);
    }
  }

  int num1 = 23;
  int num2 = 5;

  int cociente = cocienteRecursivo(num1, num2);
  int resto = restoRecursivo(num1, num2);

  print("Dividiendo $num1 entre divisor $num2:");
  print("Cociente = $cociente");
  print("Resto = $resto");
}