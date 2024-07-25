import 'package:sqflite_sqlcipher/sqlite_api.dart';

void createMessagesTable(Batch batch) {
  batch.execute('DROP TABLE IF EXISTS messages');
  batch.execute('''
		CREATE TABLE IF NOT EXISTS messages (
			id TEXT PRIMARY KEY,
			chatId TEXT,
			body TEXT,
			createdAt TEXT,
			uri TEXT,
			bot BOOLEAN,
			FOREIGN KEY (chatId) REFERENCES Chats (id) ON DELETE CASCADE
	);
	''');
}
