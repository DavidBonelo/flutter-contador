import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final texStyle = TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
          elevation: 8.0,
          backgroundColor: Color(0xFFFF9000),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de taps:', style: texStyle),
            Text('$_conteo', style: texStyle)
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      SizedBox(width: 16.0,),
      FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset,),
      Expanded(child: SizedBox(),),
      FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer),
      SizedBox(width: 5.0,),
      FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
      SizedBox(width: 16.0,),
    ]);
  }

  void _reset() => setState(() => _conteo = 0);
  void _sustraer() => setState(() => _conteo--);
  void _agregar() => setState(() => _conteo++);
}
