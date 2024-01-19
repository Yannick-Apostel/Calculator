import 'package:calculator/Theme.dart';
import 'package:calculator/application/bloc/operand_bloc.dart';
import 'package:calculator/application/theme_service.dart';
import 'package:calculator/presentation/CalculatorScreen/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OperandBloc>(
      create: (context) => OperandBloc(),
      child: Consumer<ThemeService>(builder: (context, themeService, child) {
        return MaterialApp(
          title: 'Calculator',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeService.isDarkModeOn? ThemeMode.dark: ThemeMode.light,
          home: const CalculatorScreen(),
        );
      }),
    );
  }
}
