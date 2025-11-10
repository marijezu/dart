/*13- Calcula en Dart el cociente y el resto de la división entera entre dos números enteros y
positivos utilizando el algoritmo de Euclides*/

void main() {
  //dividendo
  int a = 17;  
  //divisor
  int b = 5;

  int cociente = 0;
  int resto = a;

  // Mientras el resto sea mayor o igual que el divisor
  while (resto >= b) {
    resto = resto - b; // restao el divisor al dividendo
    cociente++;        // y cuento cuántas veces lo he restado
  }

  print("Dividendo: $a");
  print("Divisor: $b");
  print("Cociente: $cociente");
  print("Resto: $resto");
}

