import 'package:flutter/material.dart';

abstract class Keys {

	static String clear = 'C';
	static String sign = '±';
	static String percent = '%';
	static String divide = '÷';
	static String multiply = 'x';
	static String subtract = '-';
	static String add = '+';
	static String equals = '=';
	static String decimal = '.';

	static String zero = '0';
	static String one = '1';
	static String two = '2';
	static String three = '3';
	static String four = '4';
	static String five = '5';
	static String six = '6';
	static String seven = '7';
	static String eight = '8';
	static String nine = '9';
}

class CalculatorKey extends StatelessWidget {

	CalculatorKey({ this.symbol });

	final String symbol;

	@override
	Widget build(BuildContext context) {

		double size = MediaQuery.of(context).size.width / 4;

		return Container(
			width: (symbol == Keys.zero) ? (size * 2) : size,
			padding: EdgeInsets.all(2),
			height: size,
			child: RaisedButton(
				shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
				color: Colors.blue,
				elevation: 4,
				child: Text(symbol, style: TextStyle(color: Colors.white, fontSize: 28)),
        onPressed: () {},
			)
		);
	}
}