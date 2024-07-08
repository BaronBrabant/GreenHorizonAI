import 'package:flutter/material.dart';

class HomeTopBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeTopBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(84.0);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: HomeTitle());
  }
}

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: const Center(
        child: Text(
          'Your Issues',
          style: TextStyle(
            fontSize: 31.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
