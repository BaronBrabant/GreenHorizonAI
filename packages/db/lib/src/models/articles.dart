import 'package:equatable/equatable.dart';

enum ArticleType { global, national, city }

extension ArticleTypeX on ArticleType {
  static ArticleType fromString(String? string) {
    return ArticleType.values.firstWhere(
      (c) => c.name == string,
    );
  }
}

class Article extends Equatable {
  Article({
    required this.id,
    required this.type,
    required this.title,
    required this.createdAt,
    required this.uri,
    required this.body,
    this.read = false,
    this.imageUrl,
  });

  final String id;
  final ArticleType type;
  final String title;
  final DateTime createdAt;
  final String uri;
  final bool read;
  final String body;
  final String? imageUrl;

  Map<String, dynamic> toMap() {
    return {
      'id': id.toLowerCase(),
      'type': type.name,
      'title': title,
      'createdAt': createdAt.toString(),
      'uri': uri,
      'imageUrl': imageUrl,
      'body': body,
      'read': read ? 1 : 0,
    };
  }

  @override
  List<Object?> get props =>
      [title, type, title, createdAt, uri, imageUrl, body, read];
}
