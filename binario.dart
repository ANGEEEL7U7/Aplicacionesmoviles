import 'dart:ffi';

import 'dart:io';

void main() {
  int valor_binario = 0;
  int a = 1;

  print("ingresa el numero a generar en binario");
  String num = stdin.readLineSync() ?? '0';
  int valor_decimal = int.parse(num);

  while (valor_decimal > 0) {
    valor_binario = valor_binario + (valor_decimal % 2) * a;
    valor_decimal = (valor_decimal / 2).floor();

    a = a * 10;
  }
  print("$num en binario es $valor_binario");
}
