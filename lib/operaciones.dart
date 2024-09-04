import 'dart:io';

void main() {
  int numeroEntero = 10;
  double numeroDecimal = 3.14;
  String cadenaTexto = "Hola, Dart!";

  // Mostrar los valores en la consola
  print("Valor entero: $numeroEntero");
  print("Valor decimal: $numeroDecimal");
  print("Cadena de texto: $cadenaTexto");

  // Solicitar al usuario el primer número
  stdout.write('Introduce el primer número entero: ');
  int? numero1 = int.parse(stdin.readLineSync()!);

  // Solicitar al usuario el segundo número
  stdout.write('Introduce el segundo número entero: ');
  int? numero2 = int.parse(stdin.readLineSync()!);

  // Realizar operaciones 
  int suma = numero1 + numero2;
  int resta = numero1 - numero2;
  int multiplicacion = numero1 * numero2;
  double division = numero1 / numero2;

  // Mostrar los resultados en la consola
  print('La suma de $numero1 y $numero2 es: $suma');
  print('La resta de $numero1 y $numero2 es: $resta');
  print('La multiplicación de $numero1 y $numero2 es: $multiplicacion');
  print('La división de $numero1 y $numero2 es: $division');
}
