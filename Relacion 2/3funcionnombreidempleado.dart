/*3- Vamos a hacer un pequeño programa Dart con una función que muestre el nombre y el id
de un empleado que se les pasa como parámetros, pero sabiendo que, tanto uno como otro
podrían no saberse, en cuyo caso, se mostrará el nombre ‘desconocido’ y/o el id 999, que
serán una suerte de valores por defecto. (Función con parámetros opcionales, y sin
devolución de valor de retorno)*/

void main(){
  void mostrarEmpleado([String nombre = "desconocido", int id = 999]) {
    print("Nombre del empleado: $nombre, id: $id");
  }
  //Usa valores por defecto si no recibe ningún parámetro
  mostrarEmpleado();
  //Usa valores asignados
  mostrarEmpleado("Maria Jesus", 24);
  //Usa un valor asignado y otro por defecto
  //Si yo quisiera que fueran parámetros nombrados deberia de hacerlo de la siguiente forma:
  //void mostrarEmpleado({String nombre = "desconocido", int id = 999}) {
  //mostrarEmpleado(id:25);
}
