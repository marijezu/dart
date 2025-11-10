import 'dart:io';
void main(){
  print("dime el primer lado");
  double? lado1 = double.parse(stdin.readLineSync()!);
    print("dime el segundo lado");
  double? lado2 = double.parse(stdin.readLineSync()!);
    print("dime el tercer lado");
  double? lado3 = double.parse(stdin.readLineSync()!);

  if (lado1 == lado2 && lado1 == lado3) {
    print("El triángulo es equilatero, sus lados tienen valor $lado1, $lado2 y $lado3");
  }else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
     print("El triángulo es isósceles, sus lados tienen valor $lado1, $lado2 y $lado3");
  }else {
    print("El triángulo es escaleno, sus lados tienen valor $lado1, $lado2 y $lado3");
  }
}