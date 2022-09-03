import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alexi Lahio'),
        actions: [
          Container(
            margin: const EdgeInsets.all(5),
            child: CircleAvatar(
              child: const Text('AL'),
              backgroundColor: Colors.indigo[900],
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://www.veojam.com/photoart/alexi-laiho/3.jpg'),
        )
      ),
    );
  }
}
