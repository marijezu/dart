/*16- Declara en Dart un lista con los días laborables en Español y muéstrala. Añádele los
dos días del fin de semana. Recorre la lista día por día y muéstralos por pantalla. Haz lo
mismo con un Map que contenga una serie de nombres y edades. En estos dos últimos
casos, usa forEach*/

void main() {
  // Creo una lista con los días laborables
  List<String> dias = ["Lunes", "Martes", "Miércoles", "Jueves", "Viernes"];
  print("Días laborables: $dias");

  //Añado los dias del fin de semana
  dias.add("Sábado");
  dias.add("Domingo");

  print("\nLista completa de días:");
  // Recorro la lista con un forEach
  dias.forEach((dia) {
    print(dia);
  });

  // Creo un Map con nombres y edades
  Map<String, int> personas = {
    "Maria Jesus": 25,
    "Juanma": 30,
    "Chari": 29,
    "Raquel": 22
  };

  print("\nListado de personas y sus edades:");
  // Recorro el Map con forEach
  personas.forEach((nombre, edad) {
    print("$nombre tiene $edad años");
  });
}

