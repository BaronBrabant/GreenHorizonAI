import 'package:equatable/equatable.dart';

class Chat extends Equatable {
  const Chat({
    required this.id,
    this.name,
    this.favorite = false,
  });

  final String id;
  final String? name;
  final bool favorite;

  @override
  List<Object?> get props => [id, name, favorite];

  @override
  String toString() {
    return 'Chat{id: $id, name: $name, favorite: $favorite}';
  }
}
