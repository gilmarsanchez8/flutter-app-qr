import 'package:flutter/material.dart';
import 'package:flutter_app_qr/widgets/custom_navigator_bar.dart';
import 'package:flutter_app_qr/widgets/scan_buttom.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Historial'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete_forever), 
            onPressed: (){}
          )
        ],
      ),
      body: Center(
        child: Text('Home Page'),
      ),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
