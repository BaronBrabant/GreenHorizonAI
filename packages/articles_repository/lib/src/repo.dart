import 'package:db/db.dart' as db;
import 'package:articles_repository/articles_repository.dart';

class ArticlesRepositoryException implements Exception {
  ArticlesRepositoryException(this.message);

  final String message;

  @override
  String toString() => 'ArticlesRepositoryException: $message';
}

class ArticlesRepository {
  ArticlesRepository({required db.DbClient dbClient}) : _dbClient = dbClient;

  final db.DbClient _dbClient;

  Future<Message?>? msg(Message message, String chatId) {
    if (message.id == null) {
      throw ArticlesRepositoryException('msg id cannot be null');
    }

    var dbEntry = db.Messages(
      id: message.id,
      chatId: chatId,
      createdAt: DateTime.now().toUtc(),
      body: message.body,
      uri: message.uri,
    );

    _dbClient.insertMessage(dbEntry);

    return dbEntry.fromDb;
  }

  Future<List<Article>> getCityArticles() async {
    return getArticles(db.ArticleType.city);
  }

  Future<List<Article>> getNationalArticles() async {
    return getArticles(db.ArticleType.national);
  }

  Future<List<Article>> getGlobalArticles() async {
    return getArticles(db.ArticleType.global);
  }

  Future<List<Article>> getArticles(db.ArticleType type) async {
    final dbArticles = await _dbClient.getArticles(type: type);
    return dbArticles.map((dbArticle) => dbArticle.fromDb).toList();
  }

  Future<void> createDummyArticles() async {
    print("example articles are about to be created");
    final generator = ExampleArticles(_dbClient);
    generator.createArticles();
  }
}

extension on db.Messages {
  Future<Message> get fromDb async {
    return Message(
      id: id,
      chatId: chatId,
      body: body,
      createdAt: createdAt,
      uri: uri,
      bot: bot,
    );
  }
}

extension on db.Article {
  Article get fromDb {
    return Article(
      id: id,
      type: type.name,
      title: title,
      createdAt: createdAt,
      uri: uri,
      read: read,
      body: body,
      imageUrl: imageUrl,
    );
  }
}
