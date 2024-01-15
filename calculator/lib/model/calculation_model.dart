
class Calculation{
  final String num1;
  final String num2;
  final String operand;

  const Calculation({required this.num1, required this.num2, required this.operand});

  static List<Calculation> calculations = [
    const Calculation(num1: 'num1', num2: 'num2', operand: 'operand'),
  ];
}