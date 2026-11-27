import 'dart:io';
import 'package:calculator/calculator.dart';

void main() {
  bool running = true;

  print('==============================');
  print('       DART CALCULATOR');
  print('==============================');

  while (running) {
    print('\nSelect an operation:');
    print('1. Addition (+)');
    print('2. Subtraction (-)');
    print('3. Multiplication (*)');
    print('4. Division (/)');
    print('5. Exit');

    stdout.write('\nEnter your choice: ');
    String choice = stdin.readLineSync() ?? '';

    if (choice == '5') {
      print('Thank you for using the calculator.');
      running = false;
    } else if (choice == '1' ||
        choice == '2' ||
        choice == '3' ||
        choice == '4') {

      double? num1;
      double? num2;

      while (num1 == null) {
        stdout.write('Enter first number: ');
        num1 = double.tryParse(stdin.readLineSync() ?? '');

        if (num1 == null) {
          print('Invalid number. Please try again.');
        }
      }

      while (num2 == null) {
        stdout.write('Enter second number: ');
        num2 = double.tryParse(stdin.readLineSync() ?? '');

        if (num2 == null) {
          print('Invalid number. Please try again.');
        }
      }

      String operation = '';

      if (choice == '1') {
        operation = '+';
      } else if (choice == '2') {
        operation = '-';
      } else if (choice == '3') {
        operation = '*';
      } else if (choice == '4') {
        operation = '/';
      }

      try {
        double result = calculate(num1, num2, operation);

        print('\nResult: $num1 $operation $num2 = $result');
      } catch (e) {
        print('\nError: $e');
      }

    } else {
      print('Invalid choice. Please select between 1 and 5.');
    }
  }
}
