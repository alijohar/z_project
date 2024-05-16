import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

import '../model/book_model.dart';
import '../model/category_model.dart';

class BooksDatabase {
  static final BooksDatabase instance = BooksDatabase._init();
  static Database? _database;

  BooksDatabase._init();

  Future<Database> initDb() async {
    if (_database != null) {
      return _database!;
    }

    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'book_list.db');
    final file = File(path);

    if (file.existsSync()) {
      print('database already exists');
      _database = await openDatabase(path);
    } else {
      print('database does not exist');
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}

      final ByteData data =
      await rootBundle.load('assets/databases/book_list.db');
      final bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await file.writeAsBytes(bytes, flush: true);
      print('database copied');
      _database = await openDatabase(path);
    }

    return _database!;
  }

  Future<List<BookModel>> getAllBooks() async {
    final db = await initDb();
    final List<Map<String, dynamic>> bookMaps =
    await db.query('category_list');
    return List.generate(bookMaps.length, (i) {
      return BookModel(
        id: bookMaps[i]['id'],
        bookName: bookMaps[i]['book_name'],
        bookCover: bookMaps[i]['book_cover'],
        description: bookMaps[i]['description'],
      );
    });
  }


  Future<List<CategoryModel>> getAllCats() async {
    final db = await initDb();
    final List<Map<String, dynamic>> catMaps =
    await db.query('book_list');
    return List.generate(catMaps.length, (i) {
      return CategoryModel(
          id: catMaps[i]['id'],
          catId: catMaps[i]['cat_id'],
          bookPath: catMaps[i]['book_path'],
          bookName: catMaps[i]['book_name'],
          bookCover: catMaps[i]['book_cover'],
          bookStyle: catMaps[i]['book_style'],
          bookAuthor: catMaps[i]['book_author'],
          description: catMaps[i]['description']
      );
    });
  }


  Future<List<CategoryModel>> getCategoriesByCatId(int catId) async {
    final db = await initDb();
    final List<Map<String, dynamic>> catMaps = await db.query(
      'book_list',
      where: 'cat_id = ?',
      whereArgs: [catId],
    );
    return List.generate(catMaps.length, (i) {
      return CategoryModel(
        id: catMaps[i]['id'],
        catId: catMaps[i]['cat_id'],
        bookPath: catMaps[i]['book_path'],
        bookName: catMaps[i]['book_name'],
        bookCover: catMaps[i]['book_cover'],
        bookStyle: catMaps[i]['book_style'],
        bookAuthor: catMaps[i]['book_author'],
        description: catMaps[i]['description'],
      );
    });
  }

}