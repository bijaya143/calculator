import 'package:calculator/screen/calculator_screen.dart';
import 'package:flutter/material.dart';

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
       home: CalculatorScreen(),
    );
  }
}
