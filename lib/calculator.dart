import 'package:calculator/display.dart';
import 'package:calculator/keypad.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {

	Calculator({ Key key }) : super(key: key);

	@override
	_CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

	@override
	Widget build(BuildContext context) {

		Size screen = MediaQuery.of(context).size;

		double buttonSize = screen.width / 4;
		double displayHeight = screen.height - (buttonSize * 5) - (buttonSize);
	
		return Scaffold(
			backgroundColor: Colors.white,
			body: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				children: <Widget>[
					Display(value: '0', height: displayHeight),
					KeyPad()
				]
			),
		);
	}
}