void main(){
  //hay dos formas de declarar constantes:
  //Las constantes se usan si sabes el valor de una variable antes de ejecutar un programa
  //Las constantes se escriben con mayuscula y guiones bajos
  const PI = 3.1416;
  int anio = 2025;
  
  /*usamos el operador if porque son simétricas la rama verdadera y la falsa
  y generan un valor concreto
  Si al dividir el año ente 4 es 0 el año tiene 366 días sino tiene 365*/
  //Utilizamos final cuando el dato no va a cambiar una vez asignado y ese valor es calculado cuando se ejecuta el programa
  final DIASANIO = (anio % 4 == 0) ? 366 : 365;
}