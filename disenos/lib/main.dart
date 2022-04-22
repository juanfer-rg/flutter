import 'package:flutter/material.dart';
import 'package:disenos/screens/screens.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_scree',
      routes: {
        'basic_desing': (_) => BasicDesingScreen(),
        'scroll_screen': (_) => ScrollScreen(),
        'home_scree': (_) => HomeScreen(),
      },
    );
  }
}
