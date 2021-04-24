import 'package:flutter/material.dart';
import 'package:flutter_app_qr/pages/home_page.dart';
import 'package:flutter_app_qr/pages/maps_page.dart';
import 'package:flutter_app_qr/providers/ui_provider.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => new UIProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: 'home',
        routes: {
          'home' : (_) => HomePage(), 
          'mapa' : (_) => MapaPage(),
        },
        theme: ThemeData(
          primaryColor: Colors.teal,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.teal
          )
        ),
      ),
    );
  }
}