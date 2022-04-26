import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';
import 'package:qr_reader/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class ScannButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      onPressed: () async {
        String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
            '#3D8DEF', 'Cancelar', false, ScanMode.QR);

        // final barcodeScanRes = 'https://serica.com.ec';
        // final barcodeScanRes = 'geo:-0.203390,-78.480579';

        if (barcodeScanRes == '-1') return;

        final scanListProvider =
            Provider.of<ScanListProvider>(context, listen: false);

        final nuevoScan = await scanListProvider.nuevoScan(barcodeScanRes);

        LaunchUrl(context, nuevoScan);
      },
      child: Icon(Icons.qr_code_2_outlined),
    );
  }
}
