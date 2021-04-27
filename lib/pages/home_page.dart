import 'package:flutter/material.dart';
import 'package:flutter_app_qr/pages/history_maps_page.dart';
import 'package:flutter_app_qr/providers/db_provider.dart';
import 'package:flutter_app_qr/providers/ui_provider.dart';
import 'package:flutter_app_qr/widgets/custom_navigator_bar.dart';
import 'package:flutter_app_qr/widgets/scan_buttom.dart';
import 'package:provider/provider.dart';

import 'directions_maps_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Historial'),
        actions: [
          IconButton(icon: Icon(Icons.delete_forever), onPressed: () {})
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Obtener el selected menu opt
    final uiProvider = Provider.of<UIProvider>(context);
    //Mostrar página respectiva
    final currentIndex = uiProvider.selectedMenuOpt;

    //Crear bd
    //DBProvider.db.database;
    //Insertar valores en bd
    // final tempScan = new ScanModel(valor: 'http://google.com');
    // DBProvider.db.nuevoScanRaw(tempScan);

    //Obtener valores de bd
    //DBProvider.db.getScanById(1).then((scan) => print(scan.id));
    //DBProvider.db.getAllScans().then(print);
    switch (currentIndex) {
      case 0:
        return HistoryMapasPage();
        break;
      case 1:
        return DirectionsPage();
        break;
      default:
        return HistoryMapasPage();
    }
  }
}
