import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['Megaman', 'Starcraft', 'Gears','Overwatch','Diablo'];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View 2 Tipo'),
          elevation: 0,
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(Icons.gamepad_sharp),
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined, color:Colors.red,),
            onTap: (){
              final game = options[index];
              print(game);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
