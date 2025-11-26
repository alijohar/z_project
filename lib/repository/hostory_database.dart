import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../model/history_model.dart';

class HistoryDatabase {
  HistoryDatabase._init();
  static final HistoryDatabase instance = HistoryDatabase._init();
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('history_database.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final path = join(await getDatabasesPath(), filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE history_database(
        id INTEGER PRIMARY KEY,
        title TEXT,
        bookName TEXT,
        bookPath TEXT,
        navIndex TEXT
      )
    ''');
  }

  Future<void> clearAllHistory() async {
    final db = await instance.database;
    await db.delete('history_database');
  }


  Future<int> addHistory(HistoryModel historyModel) async {
    final db = await instance.database;
    return await db.insert('history_database', historyModel.toJson());
  }

  Future<List<HistoryModel>> getAllHistory() async {
    final db = await instance.database;
    final List<Map<String, dynamic>> maps = await db.query(
        'history_database',
        orderBy: 'id DESC' // Sorting by id in descending order (newest first)
    );

    return List.generate(maps.length, (i) => HistoryModel(
      id: maps[i]['id'],
      title: maps[i]['title'],
      bookName: maps[i]['bookName'],
      bookPath: maps[i]['bookPath'],
      navIndex: maps[i]['navIndex'],
    ));
  }


  Future<int> getCountOfAllHistory() async {
    final db = await instance.database;
    final List<Map<String, dynamic>> result =
    await db.rawQuery('SELECT COUNT(*) as count FROM history_database');
    final int count = result.first['count'] as int;
    return count;
  }

  Future<int> updateHistory(HistoryModel historyModel) async {
    final db = await instance.database;
    return await db.update(
      'history_database',
      historyModel.toJson(),
      where: 'id = ?',
      whereArgs: [historyModel.id],
    );
  }

  Future<List<HistoryModel>> getHistoryByBookTitleAndPage(
      String bookPath, String pageNumber) async {
    final db = await instance.database;
    final List<Map<String, dynamic>> maps = await db.query(
      'history_database',
      where: 'bookPath = ? AND navIndex = ?',
      whereArgs: [bookPath, pageNumber],
    );

    return List.generate(maps.length, (i) => HistoryModel(
      id: maps[i]['id'],
      title: maps[i]['title'],
      bookName: maps[i]['bookName'],
      bookPath: maps[i]['bookPath'],
      navIndex: maps[i]['navIndex'],
    ));
  }

  Future<List<HistoryModel>> getFilteredHistory(String query) async {
    final db = await instance.database;
    final List<Map<String, dynamic>> maps = await db.query('history_database');

    List<HistoryModel> filteredList = List.generate(maps.length, (i) => HistoryModel(
      id: maps[i]['id'],
      title: maps[i]['title'],
      bookName: maps[i]['bookName'],
      bookPath: maps[i]['bookPath'],
      navIndex: maps[i]['navIndex'],
    ));

    if (query.isNotEmpty) {
      filteredList = filteredList
          .where((item) => item.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }

    return filteredList;
  }

  Future<bool> isHistoryExist(String bookPath, String pageNumber) async {
    final db = await instance.database;
    final List<Map<String, dynamic>> maps = await db.query(
      'history_database',
      where: 'bookPath = ? AND navIndex = ?',
      whereArgs: [bookPath, pageNumber],
    );
    return maps.isNotEmpty;
  }

  Future<int> deleteHistory(int id) async {
    final db = await instance.database;
    return await db.delete(
      'history_database',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<int> deleteHistoryByBookPathAndPageNumber(
      String bookPath, String pageNumber) async {
    final db = await instance.database;
    return await db.delete(
      'history_database',
      where: 'bookPath = ? AND navIndex = ?',
      whereArgs: [bookPath, pageNumber],
    );
  }
}
