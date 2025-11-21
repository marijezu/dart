// En este archivo de la carpeta bin yo pruebo las clases del ejercicio 9:
// CuentaDebito y CuentaCredito.

import 'package:dart_relacion4/cuenta_bancaria_hereda_ej9.dart';

void main() {
  // Aquí creo una cuenta de débito.
  CuentaDebito cuentaDebito = CuentaDebito(
    numeroCuenta: "ES00-1111-2222-3333",
    nombreTitular: "Juanma (Débito)",
  );

  // Aquí yo creo una cuenta de crédito con un límite de 500 euros.
  CuentaCredito cuentaCredito = CuentaCredito(
    numeroCuenta: "ES00-4444-5555-6666",
    nombreTitular: "Ana (Crédito)",
    limiteCredito: 500.0,
  );

  print("=== Estado inicial de las cuentas ===");
  print(cuentaDebito);
  print(cuentaCredito);
  print("");

  // Pruebo ingresos en ambas cuentas.
  print("Ingreso 300.0 euros en la cuenta de débito");
  cuentaDebito.depositar(300.0);
  print(cuentaDebito);
  print("");

  print("Ingreso 100.0 euros en la cuenta de crédito");
  cuentaCredito.depositar(100.0);
  print(cuentaCredito);
  print("");

  // Pruebo extracción en cuenta de débito (caso permitido).
  print("Intento extraer 100.0 euros de la cuenta de débito (debería permitirlo)");
  cuentaDebito.extraer(100.0);
  print(cuentaDebito);
  print("");

  // Pruebo extracción en cuenta de débito (caso NO permitido).
  print(
      "Intento extraer 300.0 euros de la cuenta de débito (no debería permitirlo, dejaría saldo negativo)");
  cuentaDebito.extraer(300.0);
  print(cuentaDebito);
  print("");

  // Pruebo extracción en cuenta de crédito, permitiendo saldo negativo.
  print(
      "Intento extraer 400.0 euros de la cuenta de crédito (debería permitirlo, entra en saldo negativo pero dentro del límite)");
  cuentaCredito.extraer(400.0);
  print(cuentaCredito);
  print("");

  // Pruebo extracción que supera el límite de crédito.
  print(
      "Intento extraer 300.0 euros más de la cuenta de crédito (no debería permitirlo, superaría el límite de -500)");
  cuentaCredito.extraer(300.0);
  print(cuentaCredito);
  print("");

  // Pruebo una transferencia desde la cuenta de crédito a la de débito.
  print(
      "Intento transferir 100.0 euros desde la cuenta de crédito a la de débito");
  cuentaCredito.transferir(100.0, cuentaDebito);
  print("Cuenta de crédito después de la transferencia:");
  print(cuentaCredito);
  print("Cuenta de débito después de la transferencia:");
  print(cuentaDebito);
  print("");

}
