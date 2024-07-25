import 'dart:async';
import 'dart:io';

import 'package:db/db.dart';
import 'package:path/path.dart';

import 'package:sqflite_sqlcipher/sqflite.dart';
import 'tables/tables.dart';

const _chatsTable = 'chats';
const _messagesTable = 'messages';
const _articlesTable = 'articles';

/// {@template db_client}
/// Repository which manages local db.
/// {@endtemplate}
class DbClient {
  /// {@macro db_client}
  DbClient();

  // the db name
  String? _name;

  void connect(String name) {
    _name = name;
    getDb();
  }

  Future<Database>? _db;

  Future<Database> getDb() {
    if (_name == null) {
      throw Exception('not connected to db');
    }
    _db ??= _initDb();
    return _db!;
  }

  FutureOr<void> _onConfigure(Database db) async {
    await db.execute('PRAGMA foreign_keys = ON');
  }

  _onOpen(Database db) async {
    print('open: db version ${await db.getVersion()}');
    _onReset(db);
  }

  _onReset(Database db) async {
    var batch = db.batch();
    createChatsTable(batch);
    createMessagesTable(batch);
    createArticlesTable(batch);
    await batch.commit(noResult: true);
  }

  _onCreate(Database db, version) async {
    print('create: db version ${await db.getVersion()}');
    var batch = db.batch();
    createChatsTable(batch);
    createMessagesTable(batch);
    createArticlesTable(batch);
    await batch.commit(noResult: true);
  }

  _onUpgrade(Database db, oldVersion, newVersion) async {
    print('upgrade: db version ${await db.getVersion()}');
    var batch = db.batch();
    switch (oldVersion) {
      case 1:
        print('migrating db (1->7)');
        createChatsTable(batch);
        createMessagesTable(batch);
        createChatsTable(batch);
        await batch.commit(noResult: true);
      default:
    }
  }

  // Guaranteed to be called only once.
  Future<Database> _initDb() async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, _name);

    // Make sure the directory exists
    try {
      await Directory(databasesPath).create(recursive: true);
    } catch (_) {}

    final db = await openDatabase(
      path,
      version: 8,
      onConfigure: _onConfigure,
      onCreate: _onCreate,
      onOpen: _onOpen,
      onUpgrade: _onUpgrade,
      onDowngrade: onDatabaseDowngradeDelete,
    );
    return db;
  }

  Future<void> insertArticle(Article article) async {
    final db = await getDb();

    await db.insert(
      _articlesTable,
      article.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Article>> getArticles({ArticleType? type}) async {
    final db = await getDb();
    List<Map<String, dynamic>> maps;

    if (type != null) {
      maps = await db
          .query(_articlesTable, where: 'type = ?', whereArgs: [type.name]);
    } else {
      maps = await db.query(_articlesTable);
    }

    return List.generate(maps.length, (i) {
      return Article(
        id: maps[i]['id'],
        title: maps[i]['title'],
        body: maps[i]['body'],
        read: maps[i]['read'] == 1,
        uri: maps[i]['uri'],
        createdAt: DateTime.parse(maps[i]['createdAt']),
        type: ArticleTypeX.fromString(maps[i]['type']),
        imageUrl: maps[i]['imageUrl'],
      );
    });
  }

  Future<void> insertMessage(Messages message) async {
    final db = await getDb();

    await db.insert(
      _messagesTable,
      message.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
