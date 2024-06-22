part of 'chat_bloc.dart';

enum ChatStatus { initial, loading, success, failure }

class ChatState extends Equatable {
  ChatState({
    this.chatStatus = ChatStatus.initial,
    this.chatMessages = const [],
  });

  final ChatStatus chatStatus;
  final List<ChatMessage> chatMessages;

  ChatState copyWith({
    ChatStatus? chatStatus,
  }) {
    return ChatState(
      chatStatus: chatStatus ?? this.chatStatus,
    );
  }

  @override
  List<Object> get props => [chatStatus];
}

class ChatMessage extends Equatable {
  ChatMessage({
    required this.message,
    required this.isBot,
  });

  final String message;
  final bool isBot;

  @override
  List<Object> get props => [message, isBot];
}
