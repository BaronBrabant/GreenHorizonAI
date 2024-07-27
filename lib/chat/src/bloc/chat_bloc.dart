import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import "package:articles_repository/articles_repository.dart" as repo;

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc(this.apiKey, {repo.Article? article}) : super(ChatState()) {
    textController = TextEditingController();

    on<SendPrompt>(_onSendPrompt);
    on<UpdatePrompt>(_onUpdatePrompt);
    on<InitChat>(_onInitChat);
    on<AddArticle>(_onAddArticle);

    if (article != null) {
      add(AddArticle(article));
    }
  }

  final String apiKey;
  late GenerativeModel model;
  late TextEditingController textController;

  void _onInitChat(InitChat event, Emitter<ChatState> emit) {
    emit(state.copyWith(chatStatus: ChatStatus.loading));

    try {
      model = GenerativeModel(model: 'gemini-1.5-flash', apiKey: apiKey);
    } catch (e) {
      print("this is the error on init $e");
    }

    emit(state.copyWith(chatStatus: ChatStatus.ready, chatMessages: [
      state.article == null
          ? ChatMessage(
              message: 'Hello! I am a chatbot. How can I help you?',
              isBot: true)
          : ChatMessage(
              message:
                  "Hey there, I see you're curious about this article, what would you like to know? ",
              isBot: true)
    ]));
  }

  void _onSendPrompt(SendPrompt event, Emitter<ChatState> emit) async {
    emit(state.copyWith(chatMessages: [
      ...state.chatMessages,
      ChatMessage(message: state.prompt, isBot: false)
    ]));

    final content = [Content.text(state.prompt)];

    textController.clear();
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
  }

  void _onUpdatePrompt(UpdatePrompt event, Emitter<ChatState> emit) {
    emit(state.copyWith(prompt: event.prompt));
  }

  void _onAddArticle(AddArticle event, Emitter<ChatState> emit) async {
    emit(state.copyWith(article: event.article));
  }
}
