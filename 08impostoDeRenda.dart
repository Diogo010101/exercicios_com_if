/*Desenvolva um algoritmo para o cálculo do imposto de renda de um grupo de dez contribuintes, onde o usuário informe o valor anual do funcionário e o sistema mostra o cálculo do imposto de renda de acordo com a tabela progressiva abaixo.
Base de Cálculo Anual em R$	Alíquota %
Até 22.847,76	–
De 22.847,77 até 33.919,80	7,5
De 33.919,81 até 45.012,60	15,0
De 45.012,61 até 55.976,16	22,5
Acima de 55.976,16	27,5 */

import 'dart:io';

void main() {
  print("Digite o custo do funcionário");
  String? inputCusto = stdin.readLineSync();
  double custo = double.parse(inputCusto!);

  double custoFinal;

  if (custo <= 22847.76) {
    custoFinal = custo;
    print("Custo final: ${custoFinal.toStringAsFixed(3)} Nenhum ajuste aplicado");

  } else if (custo > 22847.76 && custo <= 33919.80) {
    custoFinal = custo + (custo * 7.5 / 100);
    print("Custo final: ${custoFinal.toStringAsFixed(3)} AJUSTE DE 7.5%");

  }else if(custo > 33919.80 && custo <= 45012.60){
    custoFinal = custo + (custo * 15 / 100);
    print("Custo final: ${custoFinal.toStringAsFixed(3)} AJUSTE DE 15%");

  }else if(custo > 45012.60 && custo <=55976.16){
    custoFinal = custo + (custo * 22.5 / 100);
    print("Custo final: ${custoFinal.toStringAsFixed(3)} AJUSTE DE 22.5%");

  }else {
    custoFinal = custo + (custo * 27.5 / 100);
    print("Custo final: ${custoFinal.toStringAsFixed(2)} AJUSTE DE 27.5%");
  }
}
