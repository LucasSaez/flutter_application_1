import 'dart:io';

void main() {
  Map<String, String> agenda = {};

  void agregarContacto(String nombre, String telefono) {
    agenda[nombre] = telefono;
    print('Contacto "$nombre" agregado con el número $telefono.');
  }

  void eliminarContacto(String nombre) {
    if (agenda.containsKey(nombre)) {
      agenda.remove(nombre);
      print('Contacto "$nombre" eliminado.');
    } else {
      print('El contacto "$nombre" no existe.');
    }
  }

  void buscarContacto(String nombre) {
    if (agenda.containsKey(nombre)) {
      print('Número de teléfono de "$nombre": ${agenda[nombre]}');
    } else {
      print('El contacto "$nombre" no existe.');
    }
  }

  void mostrarAgenda() {
    if (agenda.isEmpty) {
      print('La agenda está vacía.');
    } else {
      print('Contactos en la agenda:');
      agenda.forEach((nombre, telefono) {
        print('- $nombre: $telefono');
      });
    }
  }

  while (true) {
    print('\nOpciones:');
    print('1. Agregar contacto');
    print('2. Eliminar contacto');
    print('3. Buscar contacto');
    print('4. Mostrar agenda');
    print('5. Salir');

    stdout.write('Elige una opción: ');
    String opcion = stdin.readLineSync()!;

    switch (opcion) {
      case '1':
        stdout.write('Introduce el nombre del contacto: ');
        String nombre = stdin.readLineSync()!;
        stdout.write('Introduce el número de teléfono: ');
        String telefono = stdin.readLineSync()!;
        agregarContacto(nombre, telefono);
        break;
      case '2':
        stdout.write('Introduce el nombre del contacto a eliminar: ');
        String nombre = stdin.readLineSync()!;
        eliminarContacto(nombre);
        break;
      case '3':
        stdout.write('Introduce el nombre del contacto a buscar: ');
        String nombre = stdin.readLineSync()!;
        buscarContacto(nombre);
        break;
      case '4':
        mostrarAgenda();
        break;
      case '5':
        print('Saliendo...');
        return;
      default:
        print('Opción no válida. Inténtalo de nuevo.');
    }
  }
}
