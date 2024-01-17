import 'package:bloc/bloc.dart';
import 'package:calculator/constants/values.dart';
import 'package:meta/meta.dart';

part 'operand_event.dart';
part 'operand_state.dart';

class OperandBloc extends Bloc<OperandEvent, OperandState> {
  String dot = '0.';
  OperandBloc() : super(OperandInitialState()) {
    on<OperandUpdateEvent>((event, emit) {
    
      //! appends Value
      if (event.newValue != Values.dot &&
          int.tryParse(event.newValue) == null) {
        if (state.operand.isNotEmpty && state.num2.isNotEmpty) {
          if(state.num1.isEmpty){}
        if(state.num2.isEmpty){}
        if(state.operand.isEmpty){}

        final double number1 = double.parse(state.num1);
        final double number2 = double.parse(state.num2);

        double result =0.0;

        switch (state.operand) {
          case Values.add:
            result= number1 + number2;
            break;
            case Values.subtract:
            result= number1 - number2;
            break;
            case Values.multiply:
            result= number1 * number2;
            break;
            case Values.divide:
            result= number1 / number2;
            break;
          default:
        }
        state.num1 = "$result";
        if(state.num1.endsWith('.0')){
          state.num1=state.num1.substring(0, state.num1.length-2);
        }
        }
        state.operand = event.newValue;
      } else if (state.num1.isEmpty || state.operand.isEmpty) {
        if (event.newValue == '.' && state.num1.contains(Values.dot)) {
          //state.num1 = event.newValue;
          state.num1 += event.newValue;
        }
        if (event.newValue == Values.dot &&
            (state.num1.isEmpty || state.num1 == Values.dot)) {
          state.num1 += dot;
        }
        state.num1 += event.newValue;
      } else if (state.num2.isEmpty || state.operand.isNotEmpty) {
        if (event.newValue == Values.dot && state.num2.contains(Values.dot)) {
          state.num2 = event.newValue;
        }
        if (event.newValue == Values.dot &&
            (state.num2.isEmpty || state.num2 == Values.dot)) {
          state.num2 = dot;
        }
        state.num2 += event.newValue;
      }
     
      //state.operand += event.newValue;
      emit(OperandUpdateState(state.operand, state.num1, state.num2));
    });

    on<DelEvent>((event, emit) {
      if (state.num2.isNotEmpty) {
        state.num2 = state.num2.substring(0, state.num2.length - 1);
      } else if (state.operand.isNotEmpty) {
        state.operand = '';
      } else if (state.num1.isNotEmpty) {
        state.num1 = state.num1.substring(0, state.num1.length - 1);
      }

      emit(OperandUpdateState(state.operand, state.num1, state.num2));
    });

    on<ClrEvent>((event, emit) {
      state.num1 = '';
      state.num2 = '';
      state.operand = '';
      emit(OperandUpdateState(state.operand, state.num1, state.num2));
    });

    on<PercentageEvent>((event, emit) {
      if(state.num1.isNotEmpty && state.operand.isNotEmpty && state.num2.isNotEmpty){
        if(state.num1.isEmpty){}
        if(state.num2.isEmpty){}
        if(state.operand.isEmpty){}

        final double number1 = double.parse(state.num1);
        final double number2 = double.parse(state.num2);

        double result =0.0;

        switch (state.operand) {
          case Values.add:
            result= number1 + number2;
            break;
            case Values.subtract:
            result= number1 - number2;
            break;
            case Values.multiply:
            result= number1 * number2;
            break;
            case Values.divide:
            result= number1 / number2;
            break;
          default:
        }
        state.num1 = "$result";
        if(state.num1.endsWith('.0')){
          state.num1=state.num1.substring(0, state.num1.length-2);
        }
      }

      if(state.operand.isNotEmpty){

      }

      final number = double.parse(state.num1);
      emit(OperandUpdateState('', "${(number/100)}", ''));
    });

    on<CalcEvent>((event, emit) {
        if(state.num1.isEmpty){}
        if(state.num2.isEmpty){}
        if(state.operand.isEmpty){}

        final double number1 = double.parse(state.num1);
        final double number2 = double.parse(state.num2);

        double result =0.0;

        switch (state.operand) {
          case Values.add:
            result= number1 + number2;
            break;
            case Values.subtract:
            result= number1 - number2;
            break;
            case Values.multiply:
            result= number1 * number2;
            break;
            case Values.divide:
            result= number1 / number2;
            break;
          default:
        }
        state.num1 = "$result";
        if(state.num1.endsWith('.0')){
          state.num1=state.num1.substring(0, state.num1.length-2);
        }
        emit(OperandUpdateState('', state.num1, ''));
    });
  }
}
