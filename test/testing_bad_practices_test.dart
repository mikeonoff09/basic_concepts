import 'package:test/test.dart';

void main() {
  Calculator calculator;
  // setUp(() {
    
  // });
  group('Calculator Tests', () {
    calculator = Calculator();
    // Test for the add method
    test('Addition Test', () {
      expect(calculator.add(2, 3), equals(6));
    });

    // Test for the subtract method, which depends on the previous test
    test('Subtraction Test', () {
      expect(calculator.subtract(5, 3), equals(2));
    });
  });
}

class Calculator {
  int add(int a, int b) {
    return a + b;
  }

  int subtract(int a, int b) {
    return a - b;
  }
}
