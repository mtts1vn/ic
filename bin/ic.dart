import 'package:ic/ic.dart';

void main() {
  String nome = '';
  double altura = 0, peso = 0;

  try {
    nome = ConsoleUtils.lerConsoleString("Informe o nome: ");
    altura = ConsoleUtils.lerConsoleDouble("Informe a altura (m): ");
    peso = ConsoleUtils.lerConsoleDouble("Informe o peso (kg): ");
  } catch (e) {
    print('Informe os valores corretamente. EX: ');
    print('Nome: Nome\nAltura: 1.90\nPeso: 67');
  }

  Pessoa pessoa = Pessoa(nome: nome, altura: altura, peso: peso);
  double imc = double.parse(
      (pessoa.peso / (pessoa.altura * pessoa.altura)).toStringAsFixed(2));

  if (imc > 0) {
    String interpretacao = IMCUtils.calcularIMC(imc);
    print(imc);
    print(interpretacao);
  } else {
    print("Valores de peso e altura devem ser positivos e maiores que zero.");
  }
}
