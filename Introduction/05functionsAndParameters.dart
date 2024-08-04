void main() {
  print(greetEveryone());
  print('Suma: ${addTwoNumbers(10, 20)}');
  print('Suma: ${addTwoNumbersOptional(10)}');
}

String greetEveryone() => 'Hello Everyone';
//String greetEveryone() {
//  return 'Hello Everyone';
//}

int addTwoNumbers(int a, int b) => a + b;
//int addTwoNumbers(int a, int b) {
//  return a + b;
//}

int addTwoNumbersOptional(int a, [int b = 0]) {
  //b = b ?? 0;
  //b ??= 0;
  return a + b;
}