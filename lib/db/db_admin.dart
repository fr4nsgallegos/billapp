import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBAdmin {
  Database? myDataBase;

  Future<Database?> checkDataBase() async {
    // //PRIMERA FORMA
    // //No ha sido creada
    // if (myDataBase == null) {
    //   myDataBase = await initDatabase();
    // }
    // //Si ha sido creada
    // else {
    //   return myDataBase;
    // }
    // return myDataBase;

    //SEGUNDA FORMA
    // myDataBase ??= await initDatabase();

    //TERCERA FORMA
    if (myDataBase == null) {
      myDataBase = await initDatabase();
    }
    return myDataBase;
  }

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
      },
    );
  }
  //CRUD
  //OBTENER GASTOS
  //INSERTAR GASTO
  //ACTUALIZAR GASTO
  //ELIMINAR GASTO
}
