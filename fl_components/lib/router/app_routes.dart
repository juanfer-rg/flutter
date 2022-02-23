import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    //todo borrar home
    MenuOptions(
        route: 'home',
        name: 'HomeScreen',
        screen: const HomeScreen(),
        icon: Icons.home),

    MenuOptions(
        route: 'listview1',
        name: 'ListView 1',
        screen: const ListView1Screen(),
        icon: Icons.list_rounded),

    MenuOptions(
        route: 'listview2',
        name: 'Listview tipo 2',
        screen: const ListView2Screen(),
        icon: Icons.list_outlined),

    MenuOptions(
        route: 'alert',
        name: 'Alerts',
        screen: const AlertScreen(),
        icon: Icons.align_vertical_bottom),

    MenuOptions(
        route: 'card',
        name: 'Tarjeta - Cards',
        screen: const CardScreen(),
        icon: Icons.card_giftcard),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
