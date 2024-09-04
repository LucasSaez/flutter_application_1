import 'dart:io';

void main() {
  // Solicitar al usuario un número
  stdout.write('Introduce un número entero: ');
  int? numero = int.parse(stdin.readLineSync()!);

  // Inicializar la variable para almacenar la suma
  int suma = 0;

  // Bucle for para sumar todos los números desde 1 hasta el número proporcionado
  for (int i = 1; i <= numero; i++) {
    suma += i;
  }

  // Mostrar el resultado en la consola
  print('La suma de todos los números desde 1 hasta $numero es: $suma');
}
