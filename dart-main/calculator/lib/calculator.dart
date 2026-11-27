
double add(double a, double b) {
  return a + b;
}

double subtract(double a, double b) {
  return a - b;
}

double multiply(double a, double b) {
  return a * b;
}

double divide(double a, double b) {
  if (b == 0) {
    throw ArgumentError('Cannot divide by zero');
  }

  return a / b;
}

double calculate(double a, double b, String operation) {
  if (operation == '+') {
    return add(a, b);
  } else if (operation == '-') {
    return subtract(a, b);
  } else if (operation == '*') {
    return multiply(a, b);
  } else if (operation == '/') {
    return divide(a, b);
  } else {
    throw ArgumentError('Invalid operation');
  }
}
