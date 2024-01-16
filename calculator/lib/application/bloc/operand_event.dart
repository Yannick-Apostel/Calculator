part of 'operand_bloc.dart';

@immutable
sealed class OperandEvent {}
class OperandInitialEvent extends OperandEvent {}
class OperandUpdateEvent extends OperandEvent {}