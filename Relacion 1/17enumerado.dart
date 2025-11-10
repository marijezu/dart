/*17- Declara un enum con los colores del arco iris. Muestra con un print todos los valores,
después, solo uno (están indexados a partir del 0), y accede a uno por su nombre
(byName). Provoca una excepción buscando uno que no exista ¿Qué ocurre?*/

// Declaro el enum con los colores del arco iris
enum ColorArcoiris { rojo, naranja, amarillo, verde, azul, morado, violeta }

void main() {
  print("Los colores del arcoiris son:");

  // Recorro todo el enum e imprimo cada valor
  for (var color in ColorArcoiris.values) {
    print("Color: ${color.name}");
  }

  // Muestro solo el valor de una posicion
  print("\nColor en la posición 2:");
  print("Color: ${ColorArcoiris.values[2].name}");

  // Muestro un color por su nombre
  print("\nBuscando el color 'verde':");
  var colorPorNombre = ColorArcoiris.values.byName("verde");
  print("Color encontrado: $colorPorNombre.name");

  
  //Busco un color que no existe
  print("\nBusco el color magenta:");
  var colorNoExistente = ColorArcoiris.values.byName("magenta");
  print("Color encontrado: ${colorNoExistente.name}");
}