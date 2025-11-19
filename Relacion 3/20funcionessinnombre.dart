/*
20- Investiga qué son las funciones sin nombre y como se declaran y utilizan en Dart. Haz
un programa que pruebe cada uno de los siguientes tipos:
1. Función sin nombre asignada a una variable:
2. Función sin nombre dentro de una función de orden superior (como forEach)
3. Función con la sintaxis de flecha (=>) para funciones de una sola línea
4. Función como argumento de otra función
5. Función dentro de un map
*/

void main(){
  //1. Creo una funcion sin nombre asignada a una variable
  var multiplicacion = (int a, int b){
    return a * b;
  };

  print(multiplicacion(2,3));


  //2. Creo una funcion sin nombre dentro de una funcion de orden superior (como forEach)
  List<String> palabras = ["Maria", "Juanma", "Eliana"];
  palabras.forEach((palabra) {
    // función anónima que se ejecuta por cada elemento de la lista
    print("Número: $palabra, longitud: ${palabra.length}");
  });

  //3. Creo una función con la sintaxis de flecha (=>) para funciones de una sola línea
  var longitud = (String palabra) => palabra.length;
  print("La longitud es ${longitud('Maria Jesus')}");

  //4. Creo una funcion como argumento de otra funcion
  int calcular(int a, int b, int Function(int, int) operacion){
    return operacion(a, b);
  }
  //usando funcion anonima tipo flecha
  int resultado = calcular(20, 10, (x, y) => x + y);
  //usando funcion anonima con bloque
  int resultado2 = calcular(20, 10, (x, y){
    return x - y;
  });

  print("20 + 10 = $resultado");
  print("20 + 10 = $resultado2");

  //5. Creo una funcion dentro de un Map
  Map<String, Function> acciones = { "saludar": () {
      print("Hola Maria Jesus");
    },
    "despedir": () => print("Adios Maria Jesus"),
  };

  // Ejecutamos las funciones accediendo por la clave
  acciones["saludar"]!();   // el ! indica que no es null
  acciones["despedir"]!();

  //Otro ejemplo
  // Map donde cada clave representa una operación y el valor es una función anónima
  Map<String, Function> operaciones = {
    "sumar": (int a, int b) => a + b,
    "restar": (int a, int b) => a - b,
    "multiplicar": (int a, int b) {
      return a * b;  // ejemplo usando bloque de código
    },
    "dividir": (int a, int b) => b != 0 ? a / b : "Error: División por cero"
  };

  // Usamos las funciones dentro del Map
  print("   10 + 5 = ${operaciones['sumar']!(10, 5)}");
  print("   10 - 5 = ${operaciones['restar']!(10, 5)}");
  print("   10 × 5 = ${operaciones['multiplicar']!(10, 5)}");
  print("   10 ÷ 5 = ${operaciones['dividir']!(10, 5)}");
}


