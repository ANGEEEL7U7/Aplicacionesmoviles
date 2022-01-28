import 'dart:io';
import 'dart:ffi';


/*
Universidad Tecnologica Metropolitana

Desarrollo Movil Multiplataforma

Ing. Joel Chuc

Calcular el imc de la persona

Angel Abraham Cab Gonzalez

5 Cuatrimestre Grupo C

Parcial 1
*/
void main() {
  print("Bienvenido porfavor ingresa tu peso: ");

  String? p = stdin.readLineSync() ?? '0';
  int peso = int.parse(p);

  print("ahora ingresa tu altura: ");

  String? a = stdin.readLineSync() ?? '0';
  int altura = int.parse(a);
  double medicion = altura / 100;
  double imc = (peso / (medicion * medicion));

  if (imc < 18.5) {
    print("$imc es inferior de lo normal");
  }
  if (imc >= 18.5 && imc <= 24.9) {
    print("$imc esta en el rando estandar");
  }

  if(imc >= 25 && imc <= 29.9){
    print("$imc peso es superior a lo normal");
  }

  if(imc >= 30){
    print("$imc usted tiene obesidad");
  }
}
