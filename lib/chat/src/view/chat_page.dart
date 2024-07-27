import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:reward_tracker/chat/chat.dart';
import "package:articles_repository/articles_repository.dart" as repo;

@RoutePage()
class ChatPage extends StatelessWidget {
  const ChatPage(
      {@PathParam('apiKey') required this.apiKey, repo.Article? article})
      : _article = article;

  final String apiKey;
  final repo.Article? _article;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatBloc>(
      create: (BuildContext context) =>
          ChatBloc(apiKey, article: _article)..add(const InitChat()),
      child: BlocBuilder<ChatBloc, ChatState>(
        builder: (BuildContext context, ChatState state) {
          switch (state.chatStatus) {
            case ChatStatus.initial:
              return const Scaffold(
                appBar: ChatTopBar(),
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            case ChatStatus.loading:
              return const Scaffold(
                appBar: ChatTopBar(),
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            case ChatStatus.failure:
              return const Scaffold(
                appBar: ChatTopBar(),
                body: Center(
                  child: Text('Failed to load chat'),
                ),
              );
            case ChatStatus.ready:
              return Scaffold(
                appBar: const ChatTopBar(),
                body: ChatBody(),
              );
          }
        },
      ),
    );
  }
}
