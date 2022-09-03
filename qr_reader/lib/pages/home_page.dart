import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/pages.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';
import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scanListProvider =
        Provider.of<ScanListProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Historial'),
        actions: [
          IconButton(
            onPressed: () => scanListProvider.borrarTodo(),
            icon: FaIcon(FontAwesomeIcons.eraser),
          )
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigatorBar(),
      floatingActionButton: ScannButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //obtener el select menu opt
    final uiProvider = Provider.of<UiProvider>(context);

    //Usar Provider Scana
    final scanListProvider =
        Provider.of<ScanListProvider>(context, listen: false);

    final currenIndex = uiProvider.selectedMenuOpt;
    switch (currenIndex) {
      case 0:
        scanListProvider.cargarScanPorTipo('geo');
        return MapasPages();
      case 1:
        scanListProvider.cargarScanPorTipo('http');
        return AddressPages();
      default:
        return MapasPages();
    }
  }
}
