/*3- Vamos a hacer un pequeño programa Dart con una función que muestre el nombre y el id
de un empleado que se les pasa como parámetros, pero sabiendo que, tanto uno como otro
podrían no saberse, en cuyo caso, se mostrará el nombre ‘desconocido’ y/o el id 999, que
serán una suerte de valores por defecto. (Función con parámetros opcionales, y sin
devolución de valor de retorno)*/

void mostrarEmpleado({String nombre = "desconocido", int id = 999}) {
  print("Datos del empleado - nombre: $nombre, - id: $id");
}

void main() {
  //Llamo a la funcion indicando todos, alguno o ningun parametro
  mostrarEmpleado(nombre: "Maria Jesus", id: 896);
  mostrarEmpleado(nombre: "Raquel");
  mostrarEmpleado(id: 467);
  mostrarEmpleado();
}