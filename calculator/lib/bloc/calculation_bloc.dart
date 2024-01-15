import 'package:bloc/bloc.dart';
import 'package:calculator/model/calculation_model.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'calculation_event.dart';
part 'calculation_state.dart';

class CalculationBloc extends Bloc<CalculationEvent, CalculationState> {
  CalculationBloc() : super(CalculationInitial()) {
    on<LoadCalculations>((event, emit) async{
     emit(CalculationLoaded(calculations: <Calculation>[]));
      
    });
    on<AddCalculation>((event, emit) {
     if(state is CalculationLoaded){
      final state = this.state as CalculationLoaded;
      emit(CalculationLoaded(calculations: List.from(state.calculations)..add(event.calculation)));
     }
      
    });
    
    
  }
}
