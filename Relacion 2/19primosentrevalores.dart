/*19- Haz lo mismo en otro programa con una función que genere una lista de todos los
números primos que hay entre 1 y n, siendo n un valor entero declarado e inicializado en el
programa. Ten en cuenta que puedes reutilizar la función esPrimo ya trabajada en el
ejercicio 13*/

void main() {
  int n = 50;

  // Llamo a la funcion que genera una lista de primos y la introduzco en una lista
  List<int> primosLista = generarPrimos(n);

  // Mostramos el resultado
  print("Los números primos entre 1 y $n son:");
  print(primosLista);
}

// Creo una funcion que comprueba si un numero es primo
bool esPrimo(int numero) {
  bool primo = true;

  if (numero <= 1) {
    primo = false;
  } else {
    int i = 2;

    // Recorro desde 2 hasta la mitad del número usando division entera
    while (i <= numero ~/ 2 && primo==true) {
      // Si encuentreo un divisor ya no es primo
      if (numero % i == 0) {
        primo = false;
      }
      i = i + 1;
    }
  }
  return primo;
}

// Creo una función que genera una lista con todos los primos hasta n
List<int> generarPrimos(int n) {
  List<int> listaPrimos = [];

  for (int i = 2; i <= n; i++) {
    if (esPrimo(i)) {
      //Anado a la lista solo si es primo
      listaPrimos.add(i);
    }
  }
  return listaPrimos;
}
