import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:GreenHorizon/chat/chat.dart';
import 'package:GreenHorizon/shared/shared.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

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
                  if (state.article != null && index == 0) {
                    var image = Image.network(
                      state.article!.imageUrl!,
                      fit: BoxFit.cover,
                      errorBuilder: (BuildContext context, Object exception,
                          StackTrace? stackTrace) {
                        return Image.asset(
                          "assets/images/thumbnail_placeholder.png",
                          fit: BoxFit.cover,
                        );
                      },
                    );

                    return Column(children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ArticleCard(
                            article: state.article!,
                            image: image,
                            chatView: true),
                      ),
                      _TextBubble(
                        text: message.message,
                        isMe: !message.isBot,
                      ),
                    ]);
                  }

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
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.66),
          decoration: BoxDecoration(
            color: isMe
                ? ColorConstants.userTextBubbleColor
                : ColorConstants.geminiTextBubbleColor,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(8),
          child: Directionality(
              textDirection: isMe ? TextDirection.rtl : TextDirection.ltr,
              child: MarkdownBody(
                  data: text,
                  styleSheet: MarkdownStyleSheet(
                      p: TextStyle(
                    color: isMe ? Colors.white : Colors.black,
                  )))),
        ));
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
