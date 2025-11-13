/*13- Haz un pequeño programa Dart que defina la función esPrimo(int n), a la que invocará
pasándole un número entero positivo, y que devolverá un valor booleano tras buscarle
divisores al número: true si lo es, false si no lo es.*/


bool esPrimo(int n) {
  bool primo = true;

  for (int i = 2; i < n; i++) {
    if (n % i == 0) {
      primo = false;
    }
  }

  return primo;
}

void main() {
  int numero = 13;
  if (esPrimo(numero)) {
    print('$numero es primo.');
  } else {
    print('$numero no es primo.');
  }
}


