// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:io';

class Pessoa {
  String nome;
  double altura;
  double peso;

  Pessoa({
    required this.nome,
    required this.altura,
    required this.peso,
  });
}

class IMCUtils {
  static calcularIMC(double imc) {
    if (imc > 0 && imc < 16) {
      return "Magreza grave";
    } else if (imc > 16 && imc <= 17) {
      return "Magreza moderada";
    } else if (imc > 17 && imc <= 18.5) {
      return "Magreza leve";
    } else if (imc > 18.5 && imc <= 25) {
      return "Saudável";
    } else if (imc > 25 && imc <= 30) {
      return "Sobrepeso";
    } else if (imc > 30 && imc <= 35) {
      return "Obesidade Grau I";
    } else if (imc > 35 && imc <= 40) {
      return "Obesidade Grau II (severa)";
    } else if (imc >= 40) {
      return "Obesidade Grau III (mórbida)";
    } else {
      throw ArgumentError('O IMC precisa ser maior que 0');
    }
  }
}

class ConsoleUtils {
  static String lerConsoleString(String text) {
    print(text);
    return stdin.readLineSync(encoding: utf8).toString();
  }

  static int lerConsoleInt(String text) {
    print(text);
    return int.parse(stdin.readLineSync(encoding: utf8).toString());
  }

  static double lerConsoleDouble(String text) {
    print(text);
    return double.parse(stdin.readLineSync(encoding: utf8).toString());
  }
}
