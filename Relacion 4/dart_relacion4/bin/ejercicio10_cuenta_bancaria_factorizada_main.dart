// En este archivo pruebo la clase CuentaBancaria
// donde uso una única clase para representar
// tanto cuentas de débito como de crédito.

import 'package:dart_relacion4/cuenta_bancaria_factorizar_ej10.dart';

void main() {
  // Aquí yo creo una cuenta que actúa como "débito":
  // no permite saldo negativo.
  CuentaBancaria cuentaDebito = CuentaBancaria(
    numeroCuenta: "ES00-1111-2222-3333",
    nombreTitular: "Juanma (Débito)",
    permiteSaldoNegativo: false,
    limiteSaldoNegativo: 0.0,
  );

  // Aquí yo creo una cuenta que actúa como "crédito":
  // permite saldo negativo con un límite de 500.
  CuentaBancaria cuentaCredito = CuentaBancaria(
    numeroCuenta: "ES00-4444-5555-6666",
    nombreTitular: "Ana (Crédito)",
    permiteSaldoNegativo: true,
    limiteSaldoNegativo: 500.0,
  );

  print("=== Estado inicial ===");
  print(cuentaDebito);
  print(cuentaCredito);
  print("");

  print("Ingreso 300 en la cuenta de débito");
  cuentaDebito.depositar(300.0);
  print(cuentaDebito);
  print("");

  print("Ingreso 100 en la cuenta de crédito");
  cuentaCredito.depositar(100.0);
  print(cuentaCredito);
  print("");

  print("Intento extraer 100 de la cuenta de débito (permitido)");
  cuentaDebito.extraer(100.0);
  print(cuentaDebito);
  print("");

  print("Intento extraer 300 de la cuenta de débito (NO permitido, quedaría en negativo)");
  cuentaDebito.extraer(300.0);
  print(cuentaDebito);
  print("");

  print("Intento extraer 400 de la cuenta de crédito (permitido, saldo negativo dentro del límite)");
  cuentaCredito.extraer(400.0);
  print(cuentaCredito);
  print("");

  print("Intento extraer 300 más de la cuenta de crédito (NO permitido, pasaría el límite)");
  cuentaCredito.extraer(300.0);
  print(cuentaCredito);
  print("");

  print("Intento transferir 50 desde la cuenta de crédito a la de débito");
  cuentaCredito.transferir(50.0, cuentaDebito);
  print("Cuenta de crédito:");
  print(cuentaCredito);
  print("Cuenta de débito:");
  print(cuentaDebito);
  print("");
}
