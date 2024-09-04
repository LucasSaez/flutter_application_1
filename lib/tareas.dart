import 'dart:io';

void main() {
  List<String> tareas = [];
  Map<String, bool> tareasCompletadas = {};

  void agregarTarea(String tarea) {
    tareas.add(tarea);
    tareasCompletadas[tarea] = false; 
  }

  void marcarTareaComoCompleta(String tarea) {
    if (tareasCompletadas.containsKey(tarea)) {
      tareasCompletadas[tarea] = true;
    } else {
      print('La tarea "$tarea" no existe.');
    }
  }

  void mostrarTareas() {
    print('Tareas pendientes:');
    tareas.where((tarea) => !tareasCompletadas[tarea]!).forEach((tarea) {
      print('- $tarea');
    });

    print('\nTareas completadas:');
    tareas.where((tarea) => tareasCompletadas[tarea]!).forEach((tarea) {
      print('- $tarea');
    });
  }

  while (true) {
    print('\nOpciones:');
    print('1. Agregar tarea');
    print('2. Marcar tarea como completada');
    print('3. Mostrar tareas');
    print('4. Salir');

    stdout.write('Elige una opción: ');
    String opcion = stdin.readLineSync()!;

    switch (opcion) {
      case '1':
        stdout.write('Introduce la tarea: ');
        String tarea = stdin.readLineSync()!;
        agregarTarea(tarea);
        break;
      case '2':
        stdout.write('Introduce la tarea a marcar como completada: ');
        String tarea = stdin.readLineSync()!;
        marcarTareaComoCompleta(tarea);
        break;
      case '3':
        mostrarTareas();
        break;
      case '4':
        print('Saliendo...');
        return;
      default:
        print('Opción no válida. Inténtalo de nuevo.');
    }
  }
}
