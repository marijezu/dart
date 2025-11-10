/*20- Teniendo en cuenta que la creación de librerías de funciones favorece la reusabilidad de
las mismas, recoge todas las funciones del ejercicio 11 y ponlas en un archivo. A
continuación haz una versión de ese ejercicio, en el que importes la librería y te ahorres de
declarar dichas funciones.*/
import 'lib/dart_package_1/lib/src/dart_package_1_base.dart';
void main(List<String> args) {
  
   // Creo una lista con as temperaturas máximas
  List<double> temperaturas = [35, 40, 42, 45, 39, 46];
  print("Lista de temperaturas: $temperaturas");

  print("La temperatura máxima registrada ha sido: ${temperaturaMaxima(temperaturas)}");
  print("La temperatura mínima registrada ha sido: ${temperaturaMinima(temperaturas)}");
  print("La temperatura máxima registrada ha sido: ${temperaturaMedia(temperaturas)}");
  
}
