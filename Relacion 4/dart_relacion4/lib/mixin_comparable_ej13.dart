/*
13- Crea un mixin en Dart llamado Comparable<T> . A partir de un tipo T, deberá crear una 
interfaz que incluya los métodos anteriores. ¿Podría usarse en el caso anterior?  
*/
// En este archivo de la carpeta lib yo defino el mixin Comparable<T>
// para el ejercicio 13. Este mixin solo define la "interfaz" de comparación,
// es decir, qué métodos deben existir.

mixin Comparable<T> {
  // En este método yo digo si "this" es mayor que "otro".
  bool esMayorQue(T otro);

  // En este método yo digo si "this" es menor que "otro".
  bool esMenosQue(T otro);

  // En este método yo digo si "this" es igual que "otro".
  bool esIgualA(T otro);

  // En este método yo digo si "this" es mayor o igual que "otro".
  bool esMayorOIgualQue(T otro);

  // En este método yo digo si "this" es menor o igual que "otro".
  bool esMenorOIgualQue(T otro);

  // En este método yo digo si "this" es distinto que "otro".
  bool esDistintoQue(T otro);
}
