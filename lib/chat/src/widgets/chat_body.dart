import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reward_tracker/chat/chat.dart';

class ChatBody extends StatelessWidget {
  ChatBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        return Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: state.chatMessages.length,
                itemBuilder: (context, index) {
                  final message = state.chatMessages[index];
                  return ListTile(
                    title: Text(message.message),
                  );
                },
              ),
            ),
            ChatInput(),
          ],
        );
      },
    );
  }
}

class ChatInput extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Enter your message',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (value) {
                context.read<ChatBloc>().add(SendPrompt(value));
              },
            ),
          ),
        ],
      ),
    );
  }
}
