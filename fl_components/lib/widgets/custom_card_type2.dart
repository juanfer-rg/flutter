import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.10),
      child: Column(children: [
        const FadeInImage(
          image: NetworkImage(
              'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.destructoid.com%2Ful%2F472776-h2.jpg&f=1&nofb=1'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 300),
        ),
        Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text('Un hermoso juego'))
      ]),
    );
  }
}
