void main(){

  //declaracion de variables
  String nombre = "Maria Jesus";
  int curso = 2;
  double altura = 1.65;
  bool matricula = true;
  dynamic edad = 30;

  /*En dart todo es un objeto, las funciones de la operatoria de cada tipo
  son llamadas a métodos. toUpperCase es un método
  lenght es una propiedad
  Se utiliza la nomenclatura lowerCameCase 
  Para nombrar a las clases se usa UpperCamelCase*/
  print("Mi nombre es $nombre, y en mayúsculas ${nombre.toUpperCase()} y tiene ${nombre.length} letras");
  print("Estoy en  $curso. Mido $altura y tengo $edad años. He realizado la matricula al curso: $matricula");

  //Ahora voy a ver los tipos complejos

  //Lista (Permite duplicados, mantiene el orden de inserción)
  List<String> asignaturas = ["Matemáticas", "Lengua", "Inglés"];
  print("Las asignaturas son: $asignaturas");

  //Set (Coleccion no ordenada, no puede tener duplicados)
  Set<int> numeros = {1, 2, 3, 4};
  print("El set contiene los siguientes numeros $numeros");
    //Si quiero añadir un numero a la lista uso:
  numeros.add(5);
    //Si quiero preguntar si contiene un numero uso:
  bool contiene = numeros.contains(4);
  print("¿Contiene el set el número 4? $contiene");

  //Map(conjunto de clave-valor como los diccionarios)
  Map<String, int> edades = {"Ana": 29, "Maria Jesus": 30, "Juanma": 33};
  print("El mapa contiene: $edades");
    //Acceso al valor por la clave
  print("La edad de Maria Jesus es: ${edades['Maria Jesus']}");
    //Modifica el valor 
  print("Cambio la edad de Ana por   ${edades['Ana'] = 40}");
  print("El mapa contiene: $edades");
  //Compruebas si existe una clave en el map
  bool existeClave = edades.containsKey("Maria Jesus");
  print("¿Existe la clave Maria Jesus en el mapa? $existeClave");

  //Record (no se puede modificar una vez creado, puede tener campos con nombre y valor o valores solo)
  var alumno = (nombre: "Maria Jesus", curso: 2);
  print("Acceso por nombre: ${alumno.nombre}");
  print("Acceso por curso: ${alumno.curso}");       

  // Record sin nombres
  var punto = (3, 5);
  print("Acceso por posicion: ${punto.$1}");
  print("Acceso por posicion: ${punto.$2}");
}