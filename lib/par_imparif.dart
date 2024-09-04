import 'dart:io';

void main() {
  // Solicitar al usuario un número
  stdout.write('Introduce un número entero: ');
  int? numero = int.parse(stdin.readLineSync()!);

  // Verificar si el número es par o impar
  if (numero % 2 == 0) {
    print('El número $numero es par.');
  } else {
    print('El número $numero es impar.');
  }
}
