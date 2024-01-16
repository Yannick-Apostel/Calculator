
import 'package:calculator/Variables/parameters.dart';
import 'package:flutter/material.dart';


class Display extends StatefulWidget {
 

  const Display(
      {super.key,});

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          alignment: Alignment.bottomRight,
          padding: const EdgeInsets.all(16),
          child: Text(
            Operation.num1,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
            textAlign: TextAlign.end,
          ),
        ),
      ),
    );
  }
}
