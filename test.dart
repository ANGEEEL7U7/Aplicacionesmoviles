import 'dart:ffi';
import "dart:io"; //libreria de dart

void main() {
  /*lamentablemente dart en consola no podemos 
  hacer que nosotros mismos agregemos nuestro valores
  si no que debemos agregar un valor por default */
  int horas;
  var salario;
  var multi = 120;
  int acta = 1;
  int suma = 0;
  String empleado;
  horas = 27;
  empleado = 'Alejandro';
  /*dymanic cumple con la funcon de juntar una cadena detexto
  lo que ayuda mucho para poder compactar el codigo*/

  /*si nosotros quetemos agregar una variable del
  tipo numerico debemos hacerlo dentro de las comillas
  simples y poniendo un $y la variable
  ejemplo: 'texto $variable' */
  dynamic OneSyze = empleado + 'Trabaja: $horas horas su salario es de > ';
  dynamic TwoSyze = empleado + 'Trabaja mas de 27 horas su salario es de > ';
  dynamic ThreeSyze = empleado +
      'Tiene menos horas por lo tanto tiene un acta administrativo $acta';

  if (horas == 27) {
    salario = horas * multi;
    print(OneSyze + '$salario');
  } else {
    if (horas > 27) {
      salario = horas * multi;
      print(TwoSyze + '$salario');
      print(salario);
    } else {
      if (horas < 27) {
        print(ThreeSyze);
      }
    }
  }
}
