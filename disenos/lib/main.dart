import 'package:flutter/material.dart';
import 'package:disenos/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll_screen',
      routes: {
        'basic_desing': (_) => BasicDesingScreen(),
        'scroll_screen': (_) => ScrollScreen(),
      },
    );
  }
}
