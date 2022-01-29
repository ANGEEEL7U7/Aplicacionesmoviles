/*
Universidad Tecnologica Metropolitana

Desarrollo Movil Multiplataforma

Ing. Joel Chuc

Calcular el imc de la persona

Angel Abraham Cab Gonzalez

5 Cuatrimestre Grupo C

Parcial 1
*/

import 'dart:io';

void main() {
  String str = "hola mundo"; /* tiene 10 caracteres */
  /*vamos a utilizar dos nuevas funciones para listas
  la primera es split la divide la cadena si el patron 
  coincide*/
  var palabra = str.split(' ');
  print(palabra);
  /*leght lo que esta haciendo es contar las letras que tenemos en un variable
  en esta caso hola mundo nos dire que hay 10 caracteres incluyengo el espacio
  ejemplo */
  var palabra2 = str.length;
  print(palabra2);
  /*ahora probamos con un hola mundo sin espacio lo que nos dira que tenemos 9 caracteres */

  String str2 = "holamundo";
  var palabra3 = str2.length;
  print("holamundo tiene $palabra3 letras ");

  /*ahora si quetemos que nos cuenta que cuenta palabras ahora juntamos los dos metodos
  de la siguiente manera */
  var palabra4 = str
      .split(' ')
      .length; /*aqui estamos pidiento que verifique si hay un elemento vacio
  como el espacio entoces solo divira si la horacion cuenta con un espacio solo va separar ese espacio
  y solo contara la division que tiene este caso son dos el hola y el mundo */
  print("hola mundo tiene $palabra4 palabras");
  /*ahora haremos que apasar de que ingreses un espacio el programa lo que hara es juntarlo con la funcion replaceAll
  lo cual hara que es que nosotros ponemos la condicion y si esa condicion se cumple funcion replace cambiara el texto
  ejemplo nosotros queremos decirle a replace que si en nuestro hola mundo hay un espacio lo remplazara por un - */

  String xd = "hola mundo";
  xd = xd.replaceAll(' ', '-');
  print(xd);

  print("Ingresa una frase: ");
  String? frase = stdin.readLineSync();
  int conteo = frase!.split(" ").length;
  String? convertir = frase.replaceAll(" ", "").replaceAll(",", "");
  String giro = convertir.split('').reversed.join('');

  /* la funcion reversed hace que el texto este de reversa y join junta esos textos
  si en el split hay un espacio lo que hara es poner el mundo primero y el hola despues ahora si no hay ningun espacio  no hara nada ya que 
  la condicion no se esta compliendo*/

  print("hola mundo cambio por $xd");
  frase = frase
      .toUpperCase(); /* lo que se esta haciendo aqui es simplemente 
    pasar la frase que escribimos anteriormente lo pasara a mayusculas */
  print("\x1B[2J\x1B[0;0H");
  /*ahora haremos un condicon
  donde convertir debe coincidir con el giro*/
  if (convertir == giro) {
    print("la frase < $frase > es un palindromo y tiene $conteo");
  } else {
    print("la frase < $frase > no es un palindromo y tiene 0");
  }
}
