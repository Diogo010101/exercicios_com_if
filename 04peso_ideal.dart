/*Tendo como dados de entrada a altura e o sexo de uma pessoa (1 – Masculino ou 2 – Feminino), construa um algoritmo que calcule seu peso ideal, utilizando as seguintes fórmulas:
Masculino: (72.7 * altura) – 58
Feminino: (62.1 * altura) – 44.7 */

import 'dart:io';

void main() {
  print("Digite a altura");
  String? inputAltura = stdin.readLineSync();
  double altura = double.parse(inputAltura!);

  print("Sexo F/M:");
  String? inputSexo = stdin.readLineSync();
  String sexo = inputSexo.toString();
  sexo = sexo.toUpperCase();
  double masculino, feminino;

  if (sexo == "F") {
    feminino = (62.1 * altura) - 44.7;
    print("O peso ideal para sua altura é de: ${feminino.toStringAsFixed(2)} Kg");
  } else if (sexo == "M") {
    masculino = (72.7 * altura) - 58;
    print("O peso ideal para sua altura é de: ${masculino.toStringAsFixed(2)} Kg");
  } else {
    print("Verifique as informações digitadas");
  }
}
