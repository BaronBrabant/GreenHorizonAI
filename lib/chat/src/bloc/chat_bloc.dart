import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:bloc/bloc.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc(this.apiKey) : super(ChatState()) {
    on<SendPrompt>(_onSendPrompt);
    on<InitChat>(_onInitChat);
  }

  final String apiKey;
  late GenerativeModel model;

  void _onInitChat(InitChat event, Emitter<ChatState> emit) {
    emit(state.copyWith(chatStatus: ChatStatus.loading));

    try {
      model = GenerativeModel(model: 'gemini-1.5-flash', apiKey: apiKey);
    } catch (e) {
      emit(state.copyWith(chatStatus: ChatStatus.failure));
      return;
    }

    emit(state.copyWith(chatStatus: ChatStatus.ready, chatMessages: [
      ChatMessage(
          message: 'Hello! I am a chatbot. How can I help you?', isBot: true)
    ]));
  }

  void _onSendPrompt(SendPrompt event, Emitter<ChatState> emit) async {
    final content = [Content.text(event.prompt)];
    final GenerateContentResponse response =
        await model.generateContent(content);

    emit(state.copyWith(chatMessages: [
      ...state.chatMessages,
      ChatMessage(
          message: response.text ?? 'error generating prompt', isBot: true)
    ]));
  }
}
