import 'package:flutter/widgets.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  Future<Database> database() async {
    WidgetsFlutterBinding.ensureInitialized();

    return openDatabase (
       join( await getDatabasesPath(), 'todo.db'),
    );
  }
}
