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
                  return _TextBubble(
                    text: message.message,
                    isMe: !message.isBot,
                  );
                },
              ),
            ),
            _ChatInput(),
          ],
        );
      },
    );
  }
}

class _TextBubble extends StatelessWidget {
  _TextBubble({required this.text, required this.isMe});

  final String text;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
          color: isMe ? Colors.blue : Colors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(8),
        child: Text(text),
      ),
    );
  }
}

class _ChatInput extends StatelessWidget {
  _ChatInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: context.read<ChatBloc>().textController,
              decoration: const InputDecoration(
                hintText: 'Enter your message',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                context.read<ChatBloc>().add(UpdatePrompt(value));
              },
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              context.read<ChatBloc>().add(const SendPrompt());
            },
          ),
        ],
      ),
    );
  }
}
