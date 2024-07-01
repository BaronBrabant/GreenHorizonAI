import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc(this.apiKey) : super(ChatState()) {
    textController = TextEditingController();

    on<SendPrompt>(_onSendPrompt);
    on<UpdatePrompt>(_onUpdatePrompt);
    on<InitChat>(_onInitChat);
  }

  final String apiKey;
  late GenerativeModel model;
  late TextEditingController textController;

  void _onInitChat(InitChat event, Emitter<ChatState> emit) {
    emit(state.copyWith(chatStatus: ChatStatus.loading));

    try {
      model = GenerativeModel(model: 'gemini-1.5-flash', apiKey: apiKey);
    } catch (e) {
      //no api key yet so remove this once you do
      //emit(state.copyWith(chatStatus: ChatStatus.failure));
      //return;
    }

    emit(state.copyWith(chatStatus: ChatStatus.ready, chatMessages: [
      ChatMessage(
          message: 'Hello! I am a chatbot. How can I help you?', isBot: true)
    ]));
  }

  void _onSendPrompt(SendPrompt event, Emitter<ChatState> emit) async {
    print("Prompt on being sent: ${state.prompt}");

    emit(state.copyWith(chatMessages: [
      ...state.chatMessages,
      ChatMessage(message: state.prompt, isBot: false)
    ]));

    final content = [Content.text(state.prompt)];

    try {
      final GenerateContentResponse response =
          await model.generateContent(content);
      emit(state.copyWith(prompt: '', chatMessages: [
        ...state.chatMessages,
        ChatMessage(
            message: response.text ?? 'error generating prompt', isBot: true)
      ]));
    } catch (e) {
      emit(state.copyWith(prompt: '', chatMessages: [
        ...state.chatMessages,
        ChatMessage(
            message:
                'Hey there, I haven\'t been enabled yet but I\'m your AI helper',
            isBot: true)
      ]));
    }
    textController.clear();
  }

  void _onUpdatePrompt(UpdatePrompt event, Emitter<ChatState> emit) {
    print("Prompt on update: ${state.prompt}");
    emit(state.copyWith(prompt: event.prompt));
  }
}
