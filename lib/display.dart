import 'package:flutter/material.dart';

class Display extends StatelessWidget {

	Display({ Key key, this.value, this.height }) : super(key: key);



	final String value;
	final double height;

	@override
	Widget build(BuildContext context) {

    double margin = height / 10;

		return Container(
			padding: EdgeInsets.only(top: margin, bottom: margin),
			height: height,
			child: Container(
				padding: EdgeInsets.all(32),
        color: Colors.blue,
				height: (height - margin),
        width: MediaQuery.of(context).size.width - (margin/2),
				child: Text(value.toString(), textAlign: TextAlign.right, style: TextStyle(color: Colors.white, fontSize: 28))
			)
		);
	}
}
