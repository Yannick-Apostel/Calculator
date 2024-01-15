part of 'calculation_bloc.dart';

@immutable
sealed class CalculationEvent extends Equatable {}

class LoadCalculations extends CalculationEvent {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class AddCalculation extends CalculationEvent {
  final Calculation calculation;
  AddCalculation(this.calculation);

  @override
  List<Object> get props => [calculation];
}

