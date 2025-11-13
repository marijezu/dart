/*
12- Crea una librería con todas estas funciones llamada validaciones.dart, y prueba a
importarla desde cada programa anterior. Investiga la documentación oficial para más
posibilidades
*/
//Creo una funcion que comprueba que lo introducido es un color en formato RGB
bool esColorRGB(String texto) {

  bool esValido = false;
  // Defino la expresión regular:
  // Empieza por #, seguida de 3 o 6 caracteres hexadecimales (0-9, a-f, A-F)
  RegExp patronColor = RegExp(r'^#([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$');
  // Compruebo si el texto hace match con la expresión regular
  if (patronColor.hasMatch(texto)) {
    esValido = true;
  }
  // Devuelvo el resultado
  return esValido;
}

//Función que indica si la url introducida es valida
bool esURLValida(String texto) {
  final RegExp patronUrl = RegExp(r'^https:\/\/www\.[\w-]+(\.[\w-]+)*(\.es|\.com|\.org)$');
  bool correcto = false;
  if (patronUrl.hasMatch(texto)) {
    correcto = true;
  }
  return correcto;
}


//Función que indica si es un email valido o no
bool esEmailValido(String texto) {
  final RegExp patronEmail = RegExp(r'^[\w\.\-]+@[A-Za-z0-9\-]+\.(com|es|org)$',);
  bool esValido = false;

  if (patronEmail.hasMatch(texto)) {
    esValido = true;
  }
  return esValido;
}

//Función que comprueba si la letra del dni es correcta
String calculoLetra(int numero) {
  const String letrasDNI = "TRWAGMYFPDXBNJZSQVHLCKE";
  String letra = letrasDNI[numero % 23];
  return letra;
}

// Devuelve si el dni es valido o no
bool esDNIValido(String dni) {
  bool valido = false;
  final RegExp patronDni= RegExp(r'^\d{8}[A-Za-z]$');
  if (patronDni.hasMatch(dni)) {
    // Separo la parte del numero del dni y la parte de la letra
    String parteDniNumero = dni.substring(0, 8);
    String parteDniLetra = dni.substring(8).toUpperCase();

    // Calculo la letra correcta y la comparo con la introducida
    int numero = int.parse(parteDniNumero);
    String letraCorrecta = calculoLetra(numero);

    if (parteDniLetra== letraCorrecta) {
      valido = true;
    }else{
      valido = false;
    }
  }
  return valido;
}
