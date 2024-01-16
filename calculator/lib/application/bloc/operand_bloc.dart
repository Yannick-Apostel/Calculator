import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'operand_event.dart';
part 'operand_state.dart';

class OperandBloc extends Bloc<OperandEvent, OperandState> {
  OperandBloc() : super(OperandInitialState()) {
    
    on<OperandUpdateEvent>((event, emit) {
     emit(OperandUpdateState(state.operand));
    });
  }
}
