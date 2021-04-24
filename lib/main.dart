import 'package:flutter/material.dart';
import 'package:flutter_app_qr/pages/home_page.dart';
import 'package:flutter_app_qr/pages/maps_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Reader',
      initialRoute: 'home',
      routes: {
        'home' : (_) => HomePage(), 
        'mapa' : (_) => MapaPage(),
      },
    );
  }
}