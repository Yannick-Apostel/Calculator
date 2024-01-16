import 'package:calculator/Variables/parameters.dart';

import 'package:calculator/constants/values.dart';
import 'package:calculator/model/calculation_model.dart';
import 'package:calculator/presentation/CalculatorScreen/calculator.dart';
import 'package:flutter/material.dart';


class NumberedButton extends StatefulWidget {
  final String value;
  const NumberedButton({super.key, required this.value});

  @override
  State<NumberedButton> createState() => _NumberedButtonState();
}

class _NumberedButtonState extends State<NumberedButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
        clipBehavior: Clip.hardEdge,
        color: getBtnColor(widget.value),
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide.none),
        child: InkWell(
            onTap: () {
              
                Operation.num1 += widget.value;
              
              
            },
            child: Center(
                child: Text(
              widget.value,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ))),
      ),
    );
  }

  void onBtnTap(String value) {}

  Color getBtnColor(value) {
    return [Values.del, Values.clr].contains(value)
        ? const Color.fromARGB(255, 126, 250, 250)
        : [
            Values.per,
            Values.multiply,
            Values.add,
            Values.subtract,
            Values.divide,
            Values.calculate
          ].contains(value)
            ? Colors.white
            : const Color.fromARGB(255, 126, 180, 224);
  }
}
