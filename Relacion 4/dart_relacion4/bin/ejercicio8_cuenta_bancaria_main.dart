// En este archivo pruebo la clase CuentaBancaria
// del ejercicio 8.

import 'package:dart_relacion4/cuenta_bancaria_ej8.dart';

void main() {
  // Aquí yo creo dos cuentas bancarias.
  CuentaBancaria cuenta1 = CuentaBancaria(
    numeroCuenta: "ES00-1111-2222-3333",
    nombreTitular: "Juanma",
  );

  CuentaBancaria cuenta2 = CuentaBancaria(
    numeroCuenta: "ES00-4444-5555-6666",
    nombreTitular: "Maria Jesus",
  );

  // Muestro el estado inicial de las cuentas.
  print("=== Estado inicial de las cuentas ===");
  print(cuenta1);
  print(cuenta2);
  print("");

  // Deposito dinero en la cuenta 1.
  print("Deposito 1000.0 euros en la cuenta 1");
  cuenta1.depositar(1000.0);
  print(cuenta1);
  print("");

  // Extraigo dinero de la cuenta 1.
  print("Extraigo 200.0 euros de la cuenta 1");
  cuenta1.extraer(200.0);
  print(cuenta1);
  print("");

  // Transfiero dinero desde la cuenta 1 a la cuenta 2.
  print("Transfiero 150.0 euros de la cuenta 1 a la cuenta 2");
  cuenta1.transferir(150.0, cuenta2);
  print("Cuenta 1 después de la transferencia:");
  print(cuenta1);
  print("Cuenta 2 después de la transferencia:");
  print(cuenta2);
  print("");
}
