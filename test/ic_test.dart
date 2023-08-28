import 'package:ic/ic.dart';
import 'package:test/test.dart';

void main() {
  group('Testes retorno de resultado interpretado', () {
    test('Deve retornar Magreza grave', () {
      expect(IMCUtils.calcularIMC(15), 'Magreza grave');
    });
    test('Deve retornar Magreza moderada', () {
      expect(IMCUtils.calcularIMC(17), 'Magreza moderada');
    });
    test('Deve retornar Magreza leve', () {
      expect(IMCUtils.calcularIMC(18), 'Magreza leve');
    });
    test('Deve retornar Saudável', () {
      expect(IMCUtils.calcularIMC(20), 'Saudável');
    });
    test('Deve retornar Sobrepeso', () {
      expect(IMCUtils.calcularIMC(27), 'Sobrepeso');
    });
    test('Deve retornar Obesidade Grau I', () {
      expect(IMCUtils.calcularIMC(32), 'Obesidade Grau I');
    });
    test('Deve retornar Obesidade Grau II (severa)', () {
      expect(IMCUtils.calcularIMC(37), 'Obesidade Grau II (severa)');
    });
    test('Deve retornar Obesidade Grau III (mórbida)', () {
      expect(IMCUtils.calcularIMC(45), 'Obesidade Grau III (mórbida)');
    });
  });

  group('Testes de erros', () {
    test('Deve dar erro ao passar imc 0', () {
      expect(
          () => IMCUtils.calcularIMC(0), throwsA(TypeMatcher<ArgumentError>()));
    });
  });
}
