/*18- Haz un programa Dart que declare una lista, y la inicializa con los valores devueltos por
una función que devuelva los números de la serie de Fibonacci hasta llegar al término
n-ésimo, siendo n un valor entero declarado e inicializado al principio del programa*/

void main() {
  int n = 10;

  //llamo a la funcion
  List<int> lista = generarFibonacci(n);

  print("Los primeros $n números de la serie de Fibonacci son:");
  print(lista);
}

// Creo una función que devuelve una lista con los n primeros números de Fibonacci
List<int> generarFibonacci(int n) {
  // Creo una lista vacia para guardar los valores
  List<int> fibonacci = [];

  //Los casos bases son dos
  //Que la lista este vacia
  if (n <= 0) {
    return fibonacci;
  //O que el numero introducido por parametro sea 1
  } else if (n == 1) {
    fibonacci.add(0);
    return fibonacci;
  }

  // Introduzco los dos primeros valores de la lista
  fibonacci.add(0);
  fibonacci.add(1);

  //Calculo los siguientes hasta llegar a n empezando por 2 y los voy 
  //metiendo en la lista
  for (int i = 2; i < n; i++) {
    int siguiente = fibonacci[i - 1] + fibonacci[i - 2];
    fibonacci.add(siguiente);
  }

  // Devuelvo la lista
  return fibonacci;
}