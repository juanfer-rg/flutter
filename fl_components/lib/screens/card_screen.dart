import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Widget')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imageUrl:
                'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.destructoid.com%2Ful%2F472776-h2.jpg&f=1&nofb=1',
            imageText: 'StarCraft 2',
          ),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imageUrl:
                'http://2.bp.blogspot.com/-CRysFrWauaA/VPGcKIgSwnI/AAAAAAAADv4/XBO3r7gTY2I/s1600/Diablo-3-free-pc-game-download.jpg',
            imageText: 'Diablo',
          ),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imageUrl:
                'https://cdn.cgmagonline.com/wp-content/uploads/2016/02/gears-of-war-ultimate-edition-pc-review-2.jpg',
          ),
        ],
      ),
    );
  }
}
