import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSizeNew = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Text('hola screen'),
        centerTitle: true,
        elevation: 5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Numero de clicks',
              style: fontSizeNew,
            ),
            Text(
              '5',
              style: fontSizeNew,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print('hola mundo');
        },
      ),
    );
  }
}
