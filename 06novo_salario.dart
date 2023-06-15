/*Faça um algoritmo para calcular o novo salário de um funcionário. Sabe-se que os funcionários que recebem atualmente salário de até R$ 1.045,00 terão aumento de 20%; os demais terão aumento de 10%. */

import 'dart:io';

void main() {
  print("Qual o seu salário atual?");
  String? inputSalarioAtual = stdin.readLineSync();
  double salarioAtual = double.parse(inputSalarioAtual!);
  double novoSalario;

  if (salarioAtual <= 1045) {
    novoSalario = salarioAtual + (salarioAtual * 0.20);
    print("Após o ajuste de 20% você recebera ${novoSalario.toStringAsFixed(2)}");
  } else {
    novoSalario = salarioAtual + (salarioAtual * 0.10);
    print("Após o ajuste de 20% você recebera ${novoSalario.toStringAsFixed(2)}");
  }
}
