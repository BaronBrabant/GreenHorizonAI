part of 'chat_bloc.dart';

enum ChatStatus { initial, loading, ready, failure }

class ChatState extends Equatable {
  ChatState({
    this.chatStatus = ChatStatus.initial,
    this.chatMessages = const [],
    this.prompt = '',
  });

  final ChatStatus chatStatus;
  final List<ChatMessage> chatMessages;
  final String prompt;

  ChatState copyWith({
    ChatStatus? chatStatus,
    List<ChatMessage>? chatMessages,
    String? prompt,
  }) {
    return ChatState(
      chatStatus: chatStatus ?? this.chatStatus,
      chatMessages: chatMessages ?? this.chatMessages,
      prompt: prompt ?? this.prompt,
    );
  }

  @override
  List<Object> get props => [chatStatus, chatMessages, prompt];
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
