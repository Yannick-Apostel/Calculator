part of 'operand_bloc.dart';

@immutable
sealed class OperandEvent {}
class OperandInitialEvent extends OperandEvent {}
class OperandUpdateEvent extends OperandEvent {
  final String newValue;
  OperandUpdateEvent({required this.newValue});
}

class DelEvent extends OperandEvent {
  
}
class ClrEvent extends OperandEvent {
  
}