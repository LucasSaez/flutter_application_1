import 'dart:io';

void main() {
  var cuenta = CuentaBancaria(titular: 'Bruno Villar', saldo: 777.0);

  cuenta.mostrarSaldo();

  stdout.write('Introduce el monto a depositar: ');
  double deposito = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  cuenta.depositar(deposito);

  cuenta.mostrarSaldo();

  stdout.write('Introduce el monto a retirar: ');
  double retiro = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  cuenta.retirar(retiro);

  cuenta.mostrarSaldo();
}

class CuentaBancaria {
  String titular;
  double saldo;

  CuentaBancaria({required this.titular, required this.saldo});

  void depositar(double monto) {
    if (monto > 0) {
      saldo += monto;
      print('Deposito realizado: \$${monto}');
    } else {
      print('El monto de depósito debe ser positivo.');
    }
  }

  void retirar(double monto) {
    if (monto > 0) {
      if (monto <= saldo) {
        saldo -= monto;
        print('Retiro realizado: \$${monto}');
      } else {
        print('No se puede retirar más de lo que hay en la cuenta.');
      }
    } else {
      print('El monto de retiro debe ser positivo.');
    }
  }

  void mostrarSaldo() {
    print('Saldo actual: \$${saldo}');
  }
}
