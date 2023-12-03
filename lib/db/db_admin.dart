import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class DBAdmin {
  initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String pathDatabase = join(directory.path, "BillsDB.db");
    print(pathDatabase);
  }
}
