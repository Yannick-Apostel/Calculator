import 'package:calculator/bloc/calculation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Display extends StatelessWidget {
  final String num1;
  final String num2;
  final String operand;
  const Display(
      {super.key,
      required this.num1,
      required this.num2,
      required this.operand});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          alignment: Alignment.bottomRight,
          padding: const EdgeInsets.all(16),
          child: Text(
            '',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
            textAlign: TextAlign.end,
          ),
        ),
      ),
    );
  }
}
