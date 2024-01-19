
import 'package:calculator/Theme.dart';
import 'package:calculator/application/bloc/operand_bloc.dart';

import 'package:calculator/constants/values.dart';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NumberedButton extends StatelessWidget {
  final String value;
  const NumberedButton({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
        clipBehavior: Clip.hardEdge,
        color: getBtnColor(value, themeData),
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide.none),
        child: InkWell(
            onTap: () {
              if (value == Values.calculate) {
                context.read<OperandBloc>().add(CalcEvent());
              }
              else if (value == Values.clr) {
                context.read<OperandBloc>().add(ClrEvent());
              } else if (value == Values.del) {
                context.read<OperandBloc>().add(DelEvent());
              } else if (value == Values.per) {
                context.read<OperandBloc>().add(PercentageEvent());
              } else {
                context
                    .read<OperandBloc>()
                    .add(OperandUpdateEvent(newValue: value));
              }
            },
            child: Center(
                child: Text(
              value,
              style:  TextStyle(
                  color: themeData.colorScheme.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ))),
      ),
    );
  }

  Color getBtnColor(value, ThemeData themeData) {
    
             return [Values.del, Values.clr].contains(value)
        ?  themeData.colorScheme.secondary
        : [
            Values.per,
            Values.multiply,
            Values.add,
            Values.subtract,
            Values.divide,
            Values.calculate
          ].contains(value)
            ? themeData.colorScheme.onTertiary
            : themeData.colorScheme.tertiary;
  }
}
