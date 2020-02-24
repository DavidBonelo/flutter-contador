import 'package:flutter/material.dart';
class HomePage extends StatelessWidget{
	final texStyle = TextStyle(fontSize: 25);
	
	@override
	Widget build(BuildContext context) {
		final conteo = 20;

				return Scaffold(

					appBar: AppBar(
						title: Text('Titulo'),
						centerTitle: true,
						elevation: 8.0,
						backgroundColor: Color(0xFFFF9000),
					),
					

					body: Center(
						child: Column(
							mainAxisAlignment: MainAxisAlignment.center,
							children: <Widget>[
								Text('Numero de taps:',style: texStyle),
								Text('$conteo',style: texStyle)
					],
				)
			),
			floatingActionButton: FloatingActionButton(
				child: Icon(Icons.add),
				onPressed: (){
					// conteo++;
				}
				),
				
		);
	}
}