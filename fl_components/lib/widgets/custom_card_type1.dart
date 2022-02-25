import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album,
              color: AppTheme.primary,
            ),
            title: Text('soy un titulo'),
            subtitle: Text(
                'Adipisicing consequat tempor reprehenderit consequat elit elit consectetur est incididunt pariatur consequat. Laborum Lorem magna quis sint proident. Veniam non nulla sint tempor ea. Elit quis qui anim occaecat adipisicing mollit veniam incididunt incididunt voluptate. Esse labore ea minim ad ad voluptate eiusmod tempor ex cupidatat ad nisi magna.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancel')),
                TextButton(onPressed: () {}, child: const Text('Ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
