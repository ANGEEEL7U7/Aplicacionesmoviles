import 'dart:ffi';
import "dart:io"; //libreria de dart

void main() {
  
  var salario;
  var multi = 120;
  int acta = 1;
  int suma =
      0; /*
  String num = stdin.readLineSync() ?? '0';
  int n = int.parse(num);
  */

  print("ingresa el nombre del empleado: ");
  var empleado = stdin.readLineSync();
  print("ingresa las horas trabajadas de $empleado : ");
  String a = stdin.readLineSync() ?? '0';
  int horas = int.parse(a);

  if (horas == 27) {
    salario = multi * horas;
    print("$empleado trabajo $horas horas su salario es de: $salario");
  } else {
    if (horas > 27) {
      salario = multi * horas;
      print(
          "$empleado trabajo horas extra por lo tanto su salario es de: $salario");
    } else {
      if (horas < 27) {
        print(
            "$empleado cuenta con menos horas por lo tanto tiene se levantara un acta administrativa");
        print(
            "Ingrese la cantidad de actas administraticas que cuenta el empleado");
        String b = stdin.readLineSync() ?? '0';
        int acta = int.parse(b);
        if (acta >= 2) {
          print("empleado despedido");
        } else {
          print("empleado cuenta con una acta administrativa");
        }
      }
    }
  }
}
