import 'package:reward_tracker/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarItem extends BottomNavigationBarItem {
  BottomNavBarItem(Widget icon, String label, [Widget? activeIcon])
      : super(icon: icon, label: label, activeIcon: activeIcon);

  static BottomNavBarItem _createDefault(String uri, String label,
          [activeUri]) =>
      BottomNavBarItem(
        Column(children: [
          SvgPicture.asset(uri, height: 24.0),
          const SizedBox(height: 10.0),
        ]),
        label,
        activeUri != null
            ? Column(children: [
                SvgPicture.asset(activeUri, height: 24.0),
                const SizedBox(height: 10.0)
              ])
            : null,
      );

  static final BottomNavBarItem home = _createDefault(
    'assets/icons/home.svg',
    'Home',
    'assets/icons/home_active.svg',
  );

  static final BottomNavBarItem chat = _createDefault(
    'assets/icons/chat.svg',
    'Chat',
    'assets/icons/chat_active.svg',
  );
}
