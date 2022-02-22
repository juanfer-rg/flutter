import 'package:flutter/material.dart';
import 'package:fl_components/screens/listview1_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: const Text('Nombre de ruta'),
                  leading: const Icon(Icons.more_time_outlined),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    //     builder: (context) => const ListView1Screen());
                    // Navigator.push(context, route);
                    Navigator.pushNamed(context, 'card2');
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 100));
  }
}
