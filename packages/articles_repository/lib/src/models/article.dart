import 'package:equatable/equatable.dart';

class Article extends Equatable {
  Article({
    required this.id,
    required this.type,
    required this.title,
    required this.createdAt,
    required this.uri,
    required this.read,
    required this.body,
    this.imageUrl,
  });

  final String id;
  final String type;
  final String title;
  final DateTime createdAt;
  final String uri;
  final bool read;
  final String body;
  final String? imageUrl;

  @override
  List<Object?> get props =>
      [title, type, title, createdAt, uri, imageUrl, body, read];
}
