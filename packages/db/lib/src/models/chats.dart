import 'package:equatable/equatable.dart';

/// {@template Chat}
/// Chats model
/// {@endtemplate}
class Chat extends Equatable {
  const Chat({
    required this.id,
    this.name,
    this.favorite = false,
  });

  final String id;
  final String? name;
  final bool favorite;

  Map<String, dynamic> toMap() {
    return {
      'id': id.toLowerCase(),
      'name': name,
      'favorite': favorite ? 1 : 0,
    };
  }

  @override
  List<Object?> get props => [id, name, favorite];

  @override
  String toString() {
    return 'Chat{id: $id, name: $name, favorite: $favorite}';
  }
}
