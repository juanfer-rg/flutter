import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/pages.dart';
import 'package:qr_reader/providers/db_provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';
import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Historial'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete_forever),
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

    //todo temp leer la base de datos
    final tempScan = new ScanModel(valor: 'http://google.com.ec');
    DBProvider.db.nuevoScan(tempScan);



    //Cambiar pagina en teoria
    final currenIndex = uiProvider.selectedMenuOpt;
    switch (currenIndex) {
      case 0:
        return MapaPage();
      case 1:
        return AddressPages();
      default:
        return MapaPage();
    }
  }
}
