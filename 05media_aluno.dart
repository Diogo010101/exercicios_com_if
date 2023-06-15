/*Faça um algoritmo para calcular a média aritmética entre duas notas de um aluno e mostrar sua situação, que pode ser aprovado (se a média for maior ou igual a 7.0) ou reprovado (caso a média seja inferior a 7.0). */

import 'dart:io';

void main() {
  print("Digite a primeira nota");
  String? inputNoata1 = stdin.readLineSync();
  double nota1 = double.parse(inputNoata1!);

  print("Digite a segunda nota");
  String? inputNoata2 = stdin.readLineSync();
  double nota2 = double.parse(inputNoata2!);

  double media = (nota1 + nota2) / 2;

  if (media >= 7) {
    print("Aluno aprovado com media ${media.toStringAsFixed(1)}");

  } else {
    print("Aluno reprovado com media ${media.toStringAsFixed(1)}");
  }
}
