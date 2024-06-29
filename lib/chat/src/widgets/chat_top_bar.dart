import 'package:flutter/material.dart';

class ChatTopBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatTopBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(84.0);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: ChatTitle());
  }
}

class ChatTitle extends StatelessWidget {
  const ChatTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.0,
          ),
        ],
      ),
      child: const Center(
        child: Text(
          'Chat',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
