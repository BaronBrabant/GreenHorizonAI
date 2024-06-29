import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:reward_tracker/chat/chat.dart';

@RoutePage()
class ChatPage extends StatelessWidget {
  ChatPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ChatTopBar(),
      body: ChatBody(),
    );
  }
}
