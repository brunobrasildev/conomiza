import 'package:conomiza/models/expense_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  late Database _database;

  Future<void> initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'conomiza.db');
    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute('''
          CREATE TABLE category(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            limit REAL,
            amount REAL,
            icon TEXT
          );

          CREATE TABLE expense(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            category_id INTEGER,
            name TEXT,
            amount REAL,
            date DATE
          );
        ''');
      },
    );
  }

  Future<int> insertExpense(Expense expense) async {
    await initDatabase();
    return await _database.insert('expenses', expense.toMap());
  }

  Future<List<Expense>> getExpenses() async {
    await initDatabase();
    final List<Map<String, dynamic>> maps = await _database.query('expenses');
    return List.generate(maps.length, (i) {
      return Expense(
        id: maps[i]['id'],
        name: maps[i]['name'],
        category: maps[i]['category'],
        amount: maps[i]['amount'],
        date: maps[i]['date'],
      );
    });
  }

  Future<int> updateExpense(Expense expense) async {
    await initDatabase();
    return await _database.update(
      'expenses',
      expense.toMap(),
      where: 'id = ?',
      whereArgs: [expense.id],
    );
  }

  Future<int> deleteExpense(int id) async {
    await initDatabase();
    return await _database.delete(
      'expenses',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> closeDatabase() async {
    await _database.close();
  }
}
