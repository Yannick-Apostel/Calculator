import 'package:calculator/constants/values.dart';
import 'package:calculator/presentation/CalculatorScreen/widget/changeThemeButton.dart';
import 'package:calculator/presentation/CalculatorScreen/widget/display.dart';
import 'package:calculator/presentation/CalculatorScreen/widget/num_Buttons.dart';

import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          child: GestureDetector(
              
              onTap: () {
                debugPrint('hi');
                setState(() {});
                
              },
            child: Column(children: [
              //output
              const Display(),
              
              const ChangeThemeButton(isLightmodeOn: true,),
              
              Wrap(
                children: Values.buttonValues
                    .map((value) => SizedBox(
                        width: value == Values.n0
                            ? screenSize.width / 2
                            : (screenSize.width / 4),
                        height: screenSize.width / 5,
                        child: NumberedButton(
                          value: value,
                        )))
                    .toList(),
              ),
          
              //buttons
            ]),
          ),
        ),
      ),
    );
  }
}
