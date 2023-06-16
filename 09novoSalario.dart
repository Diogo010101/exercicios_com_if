/*Uma empresa concederá um aumento de salário aos seus funcionários, variável de acordo com o cargo, conforme a tabela abaixo. Faça um algoritmo que leia o salário e o cargo de um funcionário e calcule o novo salário. Se o cargo do funcionário não estiver na tabela, ele deverá, então, receber 40% de aumento. Mostre o salário antigo, o novo salário e a diferença.
Código	Cargo	Percentual
101	Gerente	10%
102	Engenheiro	20%
103	Técnico	30%
104	Outros	40% */

import 'dart:io';

void main() {
  print("Digite o código do cargo");
  String? inputCargo = stdin.readLineSync();
  int codCargo = int.parse(inputCargo!);

  print("Digite o salario");
  String? inputSalario = stdin.readLineSync();
  double salario = double.parse(inputSalario!);

  funAjusteSalario(codigo: codCargo, salario: salario);
}

//Fiz uma função pois o código ficou muito longo

void funAjusteSalario({required int codigo, required double salario}) {
  if (codigo == 101) {
    String cargo = "Gerente";
    double novoSalario = salario + (salario * 0.10);
    double diferenca = salario * 10 / 100;
    print("Cargo: ${cargo}\n"
        "Salário: ${salario.toStringAsFixed(2)}\n"
        "Novo salário: ${novoSalario.toStringAsFixed(2)}\n"
        "Diferenca: ${diferenca.toStringAsFixed(2)}");
  } else if (codigo == 102) {
    String cargo = "Engenheiro";
    double novoSalario = salario + (salario * 0.20);
    double diferenca = salario * 20 / 100;
    print("Cargo: ${cargo}\n"
        "Salário: ${salario.toStringAsFixed(2)}\n"
        "Novo salário: ${novoSalario.toStringAsFixed(2)}\n"
        "Diferenca: ${diferenca.toStringAsFixed(2)}");
  } else if (codigo == 103) {
    String cargo = "Técnico";
    double novoSalario = salario + (salario * 0.30);
    double diferenca = salario * 30 / 100;
    print("Cargo: ${cargo}\n"
        "Salário: ${salario.toStringAsFixed(2)}\n"
        "Novo salário: ${novoSalario.toStringAsFixed(2)}\n"
        "Diferenca: ${diferenca.toStringAsFixed(2)}");
  } else if (codigo == 104) {
    String cargo = "Outros";
    double novoSalario = salario + (salario * 0.40);
    double diferenca = salario * 40 / 100;
    print("Cargo: ${cargo}\n"
        "Salário: ${salario.toStringAsFixed(2)}\n"
        "Novo salário: ${novoSalario.toStringAsFixed(2)}\n"
        "Diferenca: ${diferenca.toStringAsFixed(2)}");
  } else {
    print("Verifique as informações digitadas");
  }
}
