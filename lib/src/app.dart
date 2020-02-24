import 'package:flutter/material.dart';
import 'package:practicaflutter/src/pages/contador_page.dart';

// import 'package:practicaflutter/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContadorPage(),
    );
  }
}
