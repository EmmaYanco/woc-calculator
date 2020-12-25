import 'package:calculator/calculator.dart';
import 'package:flutter/material.dart';

void main() async {
	runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
      theme: ThemeData(backgroundColor: const Color(0xFF212121), accentColor: Colors.white,),
			home: Calculator(),
		);
	}
}
