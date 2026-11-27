
import 'package:test/test.dart';
import 'package:calculator/calculator.dart';

void main() {
  group('Addition Tests', () {
    test('Should add two numbers', () {
      expect(add(10, 5), 15);
    });
  });

  group('Subtraction Tests', () {
    test('Should subtract two numbers', () {
      expect(subtract(10, 5), 5);
    });
  });

  group('Multiplication Tests', () {
    test('Should multiply two numbers', () {
      expect(multiply(10, 5), 50);
    });
  });

  group('Division Tests', () {
    test('Should divide two numbers', () {
      expect(divide(10, 5), 2);
    });

    test('Should not divide by zero', () {
      expect(
        () => divide(10, 0),
        throwsArgumentError,
      );
    });
  });

  group('Calculator Tests', () {
    test('Should perform addition', () {
      expect(calculate(10, 5, '+'), 15);
    });

    test('Should perform subtraction', () {
      expect(calculate(10, 5, '-'), 5);
    });

    test('Should perform multiplication', () {
      expect(calculate(10, 5, '*'), 50);
    });

    test('Should perform division', () {
      expect(calculate(10, 5, '/'), 2);
    });

    test('Should reject invalid operations', () {
      expect(
        () => calculate(10, 5, '%'),
        throwsArgumentError,
      );
    });
  });
}
