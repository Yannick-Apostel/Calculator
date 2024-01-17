import 'package:calculator/Variables/parameters.dart';
import 'package:calculator/application/bloc/operand_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Display extends StatelessWidget {
  const Display({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          alignment: Alignment.bottomRight,
          padding: const EdgeInsets.all(16),
          child: BlocBuilder<OperandBloc, OperandState>(
            builder: (context, state) {
              return Text(
                state.num1 + state.operand + state.num2,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
                textAlign: TextAlign.end,
              );
            },
          ),
        ),
      ),
    );
  }
}
