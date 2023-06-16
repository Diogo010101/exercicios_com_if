/*A ingestão de bebidas alcoólicas em quantidades excessivas pode diminuir o nível de açúcar no sangue, podendo provocar convulsões, perda de consciência, lesão cerebral permanente e até a morte.
Sabendo-se que os níveis considerados normais de glicose no organismo variam de 70 a 110 mg/dl, desenvolva um algoritmo que receba o valor do nível de glicose no sangue de uma pessoa e indique se a mesma necessita, ou não, compensar a falta de açúcar no organismo. */

import 'dart:io';

void main() {
  print("Digite o nível de glicose no sangue");
  String? inputNivelGlicose = stdin.readLineSync();
  int nivelGlicose = int.parse(inputNivelGlicose!);

  if (nivelGlicose < 70) {
    print(
        "Seu nível de glicose está em ${nivelGlicose} gm/dl Muito baixo. Procure um médico o quanto antes, mas para uma melhora imediata procure ingerir carboidratos de rápida absorção como: (açúcar, mel, suco de frutas e doces em geral)");
  } else if (nivelGlicose >= 70 && nivelGlicose <= 100) {
    print("Seu nível de glicose é de ${nivelGlicose} gm/dl NORMAL");
  } else if (nivelGlicose > 100 && nivelGlicose <= 125) {
    print(
        "caso esteja de jejum, você pode ser uma pessoa pré diabetica, procure um médico e tente melhorar seus habitos fazendo excercícios, Reduza os processados e consulma mais alimentos riscos em fibra, integrais; gorduras saudaveis como castanhas e azeite e abacate, além de beber bastante água");
  } else {
    print(
        "Sua glicose está acima de 125, você é uma pessoa diabetica caso esteja em jejum, procure um médico o quanto antes e tente melhorar seus habitos fazendo excercícios, Reduza os processados e consulma mais alimentos riscos em fibra, integrais; gorduras saudaveis como castanhas e azeite e abacate, além de beber bastante água");
  }
}
