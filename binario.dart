void main() {
  int valor_decimal = 12;
  int valor_binario = 0;
  int a = 1;

  while (valor_decimal > 0) {
    valor_binario = valor_binario + (valor_decimal % 2) * a;
    valor_decimal = (valor_decimal/2).floor();/*
    estamos usando el metodo floor ya que este hace 
    que los numeros que se van dividiendo se reedondeen*/

    a = a * 10;
  }
  print(valor_binario);
}
