import 'dart:io';

void main() {


  stdout.write('Introduce una cadena para verificar si es un palíndromo: ');
  String? cadena = stdin.readLineSync();
  if (cadena != null) {
    bool resultado = esPalindromo(cadena);
    print('La cadena "$cadena" es un palíndromo? $resultado');
  }
}


bool esPalindromo(String cadena) {

  String cadenaLimpia = cadena.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

  return cadenaLimpia == cadenaLimpia.split('').reversed.join('');
}
