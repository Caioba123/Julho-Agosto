import 'dart:io'; 

void calculate() {
  
  print('Qual a sua 1 nota?');
  double nota1 = double.parse(stdin.readLineSync()!);

  print('Qual a sua 2 nota?');
  double nota2 = double.parse(stdin.readLineSync()!);

  double media = (nota1 + nota2) / 2;

  
  print('Sua média foi: $media');

  if (media >= 7) {
    print('O aluno foi aprovado');
  } else {
    print('O aluno foi reprovado');
  }
}
