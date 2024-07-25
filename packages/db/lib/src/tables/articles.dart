import 'package:sqflite_sqlcipher/sqlite_api.dart';

void createArticlesTable(Batch batch) {
  batch.execute('DROP TABLE IF EXISTS articles');
  batch.execute('''
		CREATE TABLE IF NOT EXISTS articles (
			id TEXT PRIMARY KEY,
			type TEXT,
			title TEXT,
			body TEXT,
			createdAt TEXT,
			uri TEXT,
			imageUrl TEXT,
			read BOOLEAN DEFAULT false
	);
	''');
}
