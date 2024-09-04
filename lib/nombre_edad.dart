import 'dart:io';

void main() {
  var persona = Persona(nombre: 'Matias', edad: 34);

  persona.mostrarDatos();

  stdout.write('Introduce el nombre de la persona: ');
  String nombre = stdin.readLineSync() ?? '';

  stdout.write('Introduce la edad de la persona: ');
  int edad = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  var personaUsuario = Persona(nombre: nombre, edad: edad);

  personaUsuario.mostrarDatos();
}

class Persona {
  String nombre;
  int edad;

  // Constructor para inicializar las propiedades
  Persona({required this.nombre, required this.edad});

  // Método para mostrar los datos de la persona
  void mostrarDatos() {
    print('Nombre: $nombre');
    print('Edad: $edad');
  }
}
