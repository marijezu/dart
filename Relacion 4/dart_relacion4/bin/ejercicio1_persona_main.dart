//Ejercicio 1
/*
Una vez hecho esto, crea dos instancias de Persona y utilizalas para llamar al método 
personaDescripcion() y toString(). 
*/

// Normalmente aquí importaría con "package:..." pero como esto es un ejemplo,
// yo uso la ruta relativa al archivo de la carpeta lib.
import 'package:dart_relacion4/persona_ej1.dart';

void main() {
  //Creo la primera instancia de persona
  Persona persona1 = Persona("Maria Jesus", 30, 1.65);

  //Creo la segunda instancia de persona
  Persona persona2 = Persona("Juanma", 33, 1.92);

  // Aquí llamo al método personaDescripcion() de cada persona creada
  print("La descripcion de persona1 es:");
  persona1.personaDescripcion();

  print("La descripcion de persona2 es:");
  persona2.personaDescripcion();

  // Llamo al metodo toString que te muestra la informacion del objeto
  print("Llamo a toString() de persona1: ${persona1.toString()}");

  print("Llamo a toString() de persona1: ${persona2.toString()}");

}
