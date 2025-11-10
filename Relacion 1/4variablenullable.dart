void main() {
  String? apellido;                 // puede ser null (y ahora mismo lo es)
  print(apellido);                  // → null

  print(apellido?.toUpperCase());   // → null (el programa no se rompe)
  print(apellido ?? "Sin apellido");// → "Sin apellido" (valor por defecto)

  apellido ??= "Serrano";             // asigna porque estaba null
  print(apellido);                  // → "Serrano"

  // Ojo con el !
  print(apellido!.length);          // seguro aquí, ya no es null

  // Otro ejemplo con números
  int? edad;
  int edadMostrada = (edad ?? 0) + 1;  // si edad es null, usa 0 → 1
  print(edadMostrada);
}
