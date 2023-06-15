/*Desenvolva um algoritmo para ler dois valores (considere que não serão lidos valores iguais) e escrevê-los em ordem crescente. */

import 'dart:io';

void main() {
  print("Digite o primeiro valor: ");
  String? inputValor1 = stdin.readLineSync();
  double valor1 = double.parse(inputValor1!);

  print("Digite um valor diferente do anterior: ");
  String? inputValor2 = stdin.readLineSync();
  double valor2 = double.parse(inputValor2!);

  if (valor1 > valor2) {
    print('$valor2, $valor1');
  } else if (valor2 > valor1) {
    print('$valor1 $valor2');
  } else {
    print('os valores são uguais');
  }
}
