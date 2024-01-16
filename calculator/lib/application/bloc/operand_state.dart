part of 'operand_bloc.dart';

@immutable
sealed class OperandState {
  String operand ='';
  
  OperandState({required this.operand});
}

final class OperandInitialState extends OperandState {
  OperandInitialState(): super(operand: '');
}
final class OperandUpdateState extends OperandState {
  
  OperandUpdateState(String updatedValue): super(operand: updatedValue);
}

