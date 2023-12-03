import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBAdmin {
  initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String pathDatabase = join(directory.path, "BillsDB.db");
    print(pathDatabase);
    openDatabase(
      pathDatabase,
      version: 1,
      onCreate: (Database db, int version) {
        db.execute("""CREATE TABLE BILL(
                  id INTEGER PRIMARY KEY AUTOINCREMENT,
                  product TEXT,
                  price INT,
                  datetime TEXT,
                  type TEXT,
                  monto REAL,
                  cantidad REAL
               )""");
        db.execute("""CREATE TABLE BILL2(
                  id INTEGER PRIMARY KEY AUTOINCREMENT,
                  product TEXT,
                  price INT,
                  datetime TEXT,
                  type TEXT,
                  monto REAL,
                  cantidad REAL
               )""");
      },
    );
  }
  //CRUD
  //OBTENER GASTOS
  //INSERTAR GASTO
  //ACTUALIZAR GASTO
  //ELIMINAR GASTO
}
