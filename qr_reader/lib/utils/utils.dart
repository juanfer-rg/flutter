import 'package:flutter/material.dart';
import 'package:qr_reader/models/scan_model.dart';
import 'package:url_launcher/url_launcher.dart';

LaunchUrl(BuildContext context, ScanModel scan) async {
  if (scan.tipo == 'http') {
    final Uri _url = Uri.parse(scan.valor);
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  } else {
    Navigator.pushNamed(context, 'mapa', arguments: scan);
  }
}
