import 'dart:io';

void main() {
  // Definir el valor de π manualmente
  const double pi = 3.141592;

  stdout.write('Introduce el radio del círculo: ');
  double? radio = double.parse(stdin.readLineSync()!);

  double area = calcularAreaCirculo(radio, pi);

  print('El área del círculo con radio $radio es: $area');
}

// Función que calcula el área de un círculo dado su radio y el valor de π
double calcularAreaCirculo(double radio, double pi) {
  return pi * radio * radio;  // Utiliza la fórmula π × radio²
}
