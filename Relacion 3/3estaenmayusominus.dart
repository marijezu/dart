/*3- Vamos a declarar en un programa Dart un String al que inicializamos con una frase.
Examinaremos el contenido del String para saber si está todo en mayúsculas, en
minúsculas o ni lo uno ni lo otro. ( toUpperCase() y toLowerCase() ). Investigaremos y
probaremos también cómo se crea un string multilínea.*/

void main() {
  String frase = "Hola me llamo Maria Jesus";

  // Compruebo si esta la frase en mayus, minus o ambas
  if (frase == frase.toUpperCase()) {
    print("La frase indicada está en mayúsculas.");
  } else if (frase == frase.toLowerCase()) {
    print("La frase indicada está en minúsculas.");
  } else {
    print("La frase indicada tiene mayúsculas y minúsculas.");
  }

  // String multilínea:
  String cantantesFavo = """
  Mis cantantes favoritas son:
  Nathy Peluso,
  Lia Kali y
  Karol G.
  """;
  print("Ejemplo String multilinea =");
  print(cantantesFavo);
}
