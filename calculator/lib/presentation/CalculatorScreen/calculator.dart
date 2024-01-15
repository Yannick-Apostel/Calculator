import 'package:calculator/constants/values.dart';
import 'package:calculator/presentation/CalculatorScreen/widget/num_Buttons.dart';

import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {

Widget buildButton(value){
  return Text(value);
}
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          //output
          Expanded(
            child: SingleChildScrollView(
             
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(16),
                child: const Text(
                  '0',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
                  textAlign: TextAlign.end,
                ),
              ),
            ),
          ),

          Wrap(
            children: 
              Values.buttonValues.map((value) => SizedBox(
                width: screenSize.width/4,
                height: screenSize.width/5,
                child: NumberedButton( value: value,))).toList()
            ,
          )
          //buttons
        ]),
      ),
    );
  }
 
}
