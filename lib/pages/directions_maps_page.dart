import 'package:flutter/material.dart';
import 'package:flutter_app_qr/widgets/scan_tiles.dart';

class DirectionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScanTiles(tipo: 'http');
  }
}