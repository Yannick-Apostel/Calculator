part of 'operand_bloc.dart';

@immutable
sealed class OperandState {
  String operand ='';
  String num1 ='';
  String num2 ='';
  
  OperandState({required this.operand, required this.num1, required this.num2});
}

final class OperandInitialState extends OperandState {
  OperandInitialState(): super(operand: '',num1: '', num2: '');
}
final class OperandUpdateState extends OperandState {
  
  OperandUpdateState(String updatedOperand, String updatedNum1, String updatedNum2): super(operand: updatedOperand, num1: updatedNum1, num2: updatedNum2);
}

final class DELState extends OperandState {
  
  DELState(String updatedOperand, String updatedNum1, String updatedNum2): super(operand: updatedOperand, num1: updatedNum1, num2: updatedNum2);
}

final class CLRState extends OperandState {
  
  CLRState(String updatedOperand, String updatedNum1, String updatedNum2): super(operand: updatedOperand, num1: updatedNum1, num2: updatedNum2);
}

