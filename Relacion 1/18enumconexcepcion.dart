/*18- Modifica el programa anterior para que gestione el error con try-catch-finally. Para ello,
investiga en la documentación oficial como se gestionan los errores*/

// Declaro el enum con los colores del arco iris
enum ColorArcoiris { rojo, naranja, amarillo, verde, azul, morado, violeta }

void main() {
  print("Los colores del arcoiris son:");

  // Recorro todo el enum e imprimo cada valor
  for (var color in ColorArcoiris.values) {
    print("Color: ${color.name}");
  }

  // Muestro solo el valor de una posición
  print("\nColor en la posición 2:");
  print("Color: ${ColorArcoiris.values[2].name}");

  // Muestro un color por su nombre
  print("\nBuscando el color 'verde':");
  var colorPorNombre = ColorArcoiris.values.byName("verde");
  print("Color encontrado: ${colorPorNombre.name}");

  // Intento buscar un color que no existe (magenta)
  print("\nBusco el color 'magenta':");
  try {
    var colorNoExistente = ColorArcoiris.values.byName("magenta");
    print("Color encontrado: ${colorNoExistente.name}");
  } catch (e) {
    print("ERROR. El color indicado no existe en el enum");
  } finally {
    print("Búsqueda finalizada.");
  }
}
