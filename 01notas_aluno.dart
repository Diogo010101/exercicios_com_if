/*Faça um algoritmo que leia as 3 notas de um aluno e calcule a sua média ponderada com os pesos 2, 3 e 5, respectivamente. Considere:
Se a média obtida estiver entre 6 e 10, informar que o aluno está aprovado;
Se a média obtida estiver entre 4 e 5.9, informar que o aluno está em recuperação; nesse caso, ler a nota de recuperação e calcular a média final (que é a média entre a média anual e a nota da recuperação);
Se a média final é menor que 5, informar que o aluno está reprovado após recuperação;
Se é igual ou maior que 5, informar que o aluno está aprovado após recuperação;
Se a média obtida é menor que 4, informar que o aluno está reprovado antes da recuperação. */

import 'dart:io';

void main() {
  print("Digite a primeira nota:");
  String? inputNota1 = stdin.readLineSync();
  double nota1 = double.parse(inputNota1!);
  nota1 = nota1 * 2;

  print("Digite a primeira nota:");
  String? inputNota2 = stdin.readLineSync();
  double nota2 = double.parse(inputNota2!);
  nota2 = nota2 * 3;

  print("Digite a primeira nota:");
  String? inputNota3 = stdin.readLineSync();
  double nota3 = double.parse(inputNota3!);
  nota3 = nota3 * 5;

  double mediaFinal = (nota1 + nota2 + nota3) / 10;

  if (mediaFinal < 4) {
    print("Reprovado sem opção de recuperação com a média: ${mediaFinal.toStringAsFixed(1)}");
  } else if (mediaFinal >= 4 && mediaFinal < 6) {
    print("Média final de: ${mediaFinal.toStringAsFixed(1)} Recuperação!");
    print("Digite a nota de recuperação:");
    String? inputRecuperacao = stdin.readLineSync();
    double recuperacao = double.parse(inputRecuperacao!);
    double mediaComRecuperacao = (mediaFinal + recuperacao) / 2;
    if (mediaComRecuperacao < 5) {
      print(
          "Mesmo com a recuperação sua nota final foi de ${mediaComRecuperacao.toStringAsFixed(1)} REPROVADO APÓS RECUPERAÇÃO");
    } else {
      print("Aprovado após recuperação com média de ${mediaComRecuperacao.toStringAsFixed(1)}");
    }
  } else if (mediaFinal >= 6 && mediaFinal <= 10) {
    print("Média final de: ${mediaFinal.toStringAsFixed(1)} APROVADO!");
  } else {
    print("Verifique os dados digitados");
  }
}
