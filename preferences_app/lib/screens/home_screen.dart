import 'package:flutter/material.dart';
import 'package:preferences_app/share_preferences/preferences.dart';
import 'package:preferences_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('isDarMode: ${Preferences.isDarkMode}'),
          Divider(),
          Text('Genero: ${Preferences.gender}'),
          Divider(),
          Text('Nombre usuario: ${Preferences.name}'),
          Divider(),
        ],
      ),
    );
  }
}
