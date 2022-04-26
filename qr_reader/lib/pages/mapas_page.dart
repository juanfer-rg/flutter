import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/widgets/scan_tiles.dart';
import '../providers/scan_list_provider.dart';

class MapasPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScanTiles(tipo: 'geo',);
  }
}
