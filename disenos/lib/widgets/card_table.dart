import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.assessment_outlined,
              color: Color.fromRGBO(10, 140, 238, 0.7),
              text: 'General',
            ),
            _SingleCard(
              icon: Icons.bus_alert_rounded,
              color: Color.fromRGBO(64, 169, 238, 1),
              text: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.shopping_bag,
              color: Colors.pinkAccent,
              text: 'Shopping',
            ),
            _SingleCard(
              icon: Icons.monetization_on_sharp,
              color: Colors.yellow,
              text: 'Bills',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.catching_pokemon_sharp,
              color: Colors.blueAccent,
              text: 'Entertaiment',
            ),
            _SingleCard(
              icon: Icons.fastfood,
              color: Colors.green,
              text: 'Grocery',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.assessment_outlined,
              color: Color.fromRGBO(10, 140, 238, 0.7),
              text: 'General',
            ),
            _SingleCard(
              icon: Icons.bus_alert_rounded,
              color: Color.fromRGBO(64, 169, 238, 1),
              text: 'Transport',
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(
              this.icon,
              size: 35,
              color: Colors.white,
            ),
            radius: 30,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            this.text,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}
