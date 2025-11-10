/*19- Haz un programa Dart que declare un Map con nombres y edades, y lo recorra
mostrando todo (clave-valor), que lo recorra mostrando solo las claves, y también, aparte,
mostrando solo los valores. ¿Qué pasaría si sabemos que alguna de las edades no están
inicializadas?*/

void main() {
  // Declaro el mapa con nombres y edades
  Map<String, int?> personas = {
    "Maria Jesus": 30,
    "Juanma": 28,
    "Chari": null, // edad no inicializada
    "Felix": 35
  };

  print("---- Nombres y edades ----");
  // Recorro el mapa mostrando clave y valor
  personas.forEach((nombre, edad) {
    print("Nombre: $nombre, Edad: $edad");
  });

  //Recorro solo las claves
  print("\n---- Solo nombres ----");
  for (var nombre in personas.keys) {
    print(nombre);
  }
  //Recorro solo las edades
  print("\n---- Solo edades ----");
  for (var edad in personas.values) {
    print(edad);
  }
}
