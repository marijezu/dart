import 'package:intl/intl.dart';


//Metodo que devuelve la fecha y hora actual
void fechaHoraActual(){
    DateTime now = DateTime.now();
    print("Fecha y hora actual: $now");
}

//Metodo que devuelve la fecha y hora utc
void fechaHoraUtc(){
  DateTime nowUtc = DateTime.now().toUtc();
  print("Fecha y hora actual en UTC: $nowUtc");
}

// Método que recibe una fecha y devuelve el formato ISO 8601
String formatearISO8601(DateTime fecha) {
  DateFormat isoFormat = DateFormat("yyyy-MM-ddTHH:mm:ssZ");
  return isoFormat.format(fecha);
}

// Método que recibe una fecha y la formatea en estilo local francés (fr_FR)
String formatearFechaLocal(DateTime fecha) {
  DateFormat localFormat = DateFormat.yMMMMEEEEd('fr_FR').add_Hms();
  return localFormat.format(fecha);
}

// Método que recibe una fecha y la formatea en estilo completo (yMMMMd + jm)
String formatearFechaCompleta(DateTime fecha) {
  DateFormat fullDateFormat = DateFormat.yMMMMd().add_jm();
  return fullDateFormat.format(fecha);
}

// Método para formatear la fecha con el formato personalizado 1
String formatearPersonalizado1(DateTime fecha) {
  DateFormat customFormat = DateFormat("EEEE, d MMMM yyyy, HH:mm:ss");
  return customFormat.format(fecha);
}

// Método para formatear la fecha con el formato personalizado 2
String formatearPersonalizado2(DateTime fecha) {
  DateFormat anotherCustomFormat = DateFormat("dd/MM/yyyy hh:mm a");
  return anotherCustomFormat.format(fecha);
}

// Método que compara tres fechas y muestra los resultados
void compararFechas(DateTime date1, DateTime date2, DateTime date3) {
  // Ejemplo simple: comparación de igualdad
  bool isEqual = date1 == date2;
  print("date1 == date2 : $isEqual");

  // Ejemplo intermedio: comparación de desigualdad
  bool isNotEqual = date1 != date3;
  print("date1 != date3 : $isNotEqual");

  // Ejemplo complejo: uso de varios operadores
  bool isBeforeOrEqual = date1.isBefore(date2) || date1.isAtSameMomentAs(date2);
  bool isAfterOrEqual = date2.isAfter(date3) || date2.isAtSameMomentAs(date3);

  print("date1 <= date2 : $isBeforeOrEqual");
  print("date2 >= date3 : $isAfterOrEqual");
}

// Método que compara fechas usando isBefore() e isAfter()
void compararFechasConMetodos(DateTime date1, DateTime date2, DateTime date3) {
  // Ejemplo simple: uso de isBefore()
  bool isDate1BeforeDate2 = date1.isBefore(date2);
  print("date1 es anterior a date2 : $isDate1BeforeDate2");

  // Ejemplo intermedio: uso de isAfter()
  bool isDate2AfterDate3 = date2.isAfter(date3);
  print("date2 es posterior a date3 : $isDate2AfterDate3");

  // Ejemplo complejo: verificar si date1 está entre date3 y date2
  bool isDate1Between = date1.isAfter(date3) && date1.isBefore(date2);
  print("date1 está entre date3 y date2 : $isDate1Between");
}

// Método que calcula la duración entre dos fechas y muestra el resultado
void calcularDuracion(DateTime start, DateTime end) {
  Duration difference = end.difference(start);
  print("Duración entre $start y $end : $difference");
}

// Método que calcula y muestra la duración detallada entre dos fechas
void calcularDuracionDetallada(DateTime start, DateTime end) {
  Duration difference = end.difference(start);

  int days = difference.inDays;
  int hours = difference.inHours % 24;
  int minutes = difference.inMinutes % 60;
  int seconds = difference.inSeconds % 60;

  print("Duración total: $days días, $hours horas, $minutes minutos, $seconds segundos");
}

// Método que suma una duración a una fecha y muestra el resultado
void sumarDuracion(DateTime fechaBase, Duration duracion) {
  DateTime futureDate = fechaBase.add(duracion);
  print("Fecha resultante: $futureDate");
}

// Método que resta una duración a una fecha y muestra el resultado
void restarDuracion(DateTime fechaBase, Duration duracion) {
  DateTime pastDate = fechaBase.subtract(duracion);
  print("Fecha resultante: $pastDate");
}














