import 'package:sqflite_sqlcipher/sqlite_api.dart';

void createChatsTable(Batch batch) {
  batch.execute('DROP TABLE IF EXISTS chats');
  batch.execute('''
		CREATE TABLE IF NOT EXISTS chats (
			id TEXT PRIMARY KEY,
			name TEXT,
			favorite BOOLEAN DEFAULT false
	);
	''');
}
