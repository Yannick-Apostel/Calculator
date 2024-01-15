part of 'calculation_bloc.dart';

@immutable
sealed class CalculationState {}

final class CalculationInitial extends CalculationState {}

class CalculationLoaded extends CalculationState {
  final List<Calculation> calculations;
  CalculationLoaded({required this.calculations});

  @override
  List<Object> get props => [calculations];
}
