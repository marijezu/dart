//Ejercicio 1
/*Refactoriza el código para crear una clase Persona que contenga como atributos nombre, 
edad, altura. Declara el constructor para generar instancias, un método 
personaDescripcion() para que muestre una instancia justo como el print de ese 
código. Reescribe el método toString().*/  
//Creo la clase persona
class Persona {
  // Declaro los atributos de la persona.
  String nombre;
  int edad;
  double altura;

  // En este constructor recibo los valores y los guardo en los atributos.
  Persona(this.nombre, this.edad, this.altura);

  // En este método yo construyo un texto describiendo a la persona
  void personaDescripcion() {
    print("Mi nombre es $nombre. Tengo $edad años, y mido $altura metros de altura.");
  }

  // Aquí yo sobrescribo el método toString().
  @override
  String toString() {
    // Devuelvo un texto con los valores de cada atributo
    String texto = "Los informacion de la persona es nombre: $nombre, edad: $edad, altura: $altura)";
    return texto;
  }
}
