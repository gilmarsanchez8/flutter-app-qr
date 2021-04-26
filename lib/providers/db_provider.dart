import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

// import 'package:flutter_app_qr/models/scan_model.dart';
export 'package:flutter_app_qr/models/scan_model.dart';

class DBProvider {
  static Database _database;
  //Constructor privado
  static final DBProvider db = DBProvider._();
  DBProvider._();

  Future<Database> get database async {
    if (_database != null) return _database;

    _database = await initDB();

    return _database;
  }

  Future<Database> initDB() async {
    //Path de donde almacenaremos la BD
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'ScansDBase.db');
    print(path);

    //Crear BD
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute('''
        CREATE TABLE Scans(
          id INTEGER PRIMARY KEY,
          tipo TEXT,
          valor TEXT
        )
      ''');
    });
  }

  // Future<int> nuevoScanRaw(ScanModel nuevoScan) async {
  //   final id = nuevoScan.id;
  //   final tipo = nuevoScan.tipo;
  //   final valor = nuevoScan.valor;
  //   //Verificar BD
  //   final db = await database;

  //   final res = await db.rawInsert('''
  //     INSERT INTO Scans( id, tipo, valor) 
  //     VALUES ($id, '$tipo', '$valor')
  //   ''');

  //   return res;
  // }
}