import 'package:calculator/constants/values.dart';
import 'package:flutter/material.dart';

class NumberedButton extends StatelessWidget {
  final String value;
  const NumberedButton({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
        clipBehavior: Clip.hardEdge,
        color: getBtnColor(value),
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide.none),
        child: InkWell(
            onTap: () {},
            child: Center(
                child: Text(
              value,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ))),
      ),
    );
  }
  Color getBtnColor(value){
    return [Values.del, Values.clr].contains(value)
            ? Colors.white
            : [
                Values.per,
                Values.multiply,
                Values.add,
                Values.subtract,
                Values.divide,
                Values.calculate
              ].contains(value)
                ? Color.fromARGB(255, 126, 250, 250)
                : const Color.fromARGB(255, 126, 180, 224);
  }
}
