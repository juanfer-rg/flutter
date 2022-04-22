import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScannButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      onPressed: () async {
        // String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        //     '#3D8DEF', 'Cancelar', false, ScanMode.QR);

        String barcodeScanRes = 'https://google.com.ec';
        print(barcodeScanRes);
      },
      child: Icon(Icons.qr_code_2_outlined),
    );
  }
}
