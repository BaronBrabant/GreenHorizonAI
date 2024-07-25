import 'package:equatable/equatable.dart';

/// messages
class Messages extends Equatable {
  const Messages({
    required this.id,
    this.chatId,
    this.body,
    this.createdAt,
    this.uri,
    this.bot,
  });

  final String id;
  final String? chatId;
  final String? body;
  final DateTime? createdAt;
  final String? uri;
  final String? bot;

  Map<String, dynamic> toMap() {
    return {
      'id': id.toLowerCase(),
      'chatId': chatId,
      'body': body,
      'createdAt': createdAt,
      'uri': uri,
      'bot': bot,
    };
  }

  @override
  List<Object?> get props => [id, chatId, body, createdAt, uri, bot];

  @override
  String toString() {
    return 'Messages{id: $id, chatId: $chatId, body: $body, createdAt: $createdAt, uri: $uri, bot: $bot}';
  }
}
