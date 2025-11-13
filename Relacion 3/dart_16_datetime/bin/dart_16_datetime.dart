
import 'package:dart_16_datetime/dart_16_datetime.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
 // Inicializar datos de formato para todos los idiomas
  initializeDateFormatting();

  print("========== FECHAS BÁSICAS ==========");
  fechaHoraActual();
  fechaHoraUtc();

  print("\n========== FECHAS DE PRUEBA ==========");
  DateTime date1 = DateTime(2024, 6, 17, 15, 30, 0);
  DateTime date2 = DateTime(2024, 6, 17, 18, 45, 0);
  DateTime date3 = DateTime(2023, 12, 25, 10, 0, 0);

  print("date1: $date1");
  print("date2: $date2");
  print("date3: $date3");

  print("\n========== FORMATEOS ==========");
  print("ISO 8601: ${formatearISO8601(date1)}");
  print("Formato local FR: ${formatearFechaLocal(date1)}");
  print("Formato completo: ${formatearFechaCompleta(date1)}");
  print("Formato personalizado 1: ${formatearPersonalizado1(date1)}");
  print("Formato personalizado 2: ${formatearPersonalizado2(date1)}");

  print("\n========== COMPARACIONES ==========");
  compararFechas(date1, date2, date3);
  compararFechasConMetodos(date1, date2, date3);

  print("\n========== DURACIONES ==========");
  calcularDuracion(date1, date2);
  calcularDuracionDetallada(date1, date2);

  print("\n========== SUMAR / RESTAR DURACIÓN ==========");
  sumarDuracion(date1, Duration(days: 5, hours: 3, minutes: 20));
  restarDuracion(date1, Duration(days: 10));
}