import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSizeNew = TextStyle(fontSize: 30);
    int count = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('hola screen'),
        centerTitle: true,
        elevation: 5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Numero de clicks',style: fontSizeNew,),
            Text('$count',style: fontSizeNew,),
          ],
        ),
      ),
      // floatingActionButtonLocation:  FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          count++;
          print('hola mundo $count');
        },
      ),
    );
  }
}
