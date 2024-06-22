part of 'chat_bloc.dart';

class ChatEvent extends Equatable {
  const ChatEvent();

  @override
  List<Object> get props => [];
}

class InitChat extends ChatEvent {
  const InitChat();

  @override
  List<Object> get props => [];
}

class SendPrompt extends ChatEvent {
  const SendPrompt(this.prompt);

  final String prompt;

  @override
  List<Object> get props => [prompt];
}
