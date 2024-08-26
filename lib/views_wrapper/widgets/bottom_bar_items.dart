import 'package:GreenHorizon/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarItem extends BottomNavigationBarItem {
  BottomNavBarItem(Widget icon, String label, [Widget? activeIcon])
      : super(icon: icon, label: label, activeIcon: activeIcon);

  static BottomNavBarItem _createDefault(String uri, String label,
          [activeUri]) =>
      BottomNavBarItem(
        SvgPicture.asset(uri, height: 40.0),
        label,
        activeUri != null ? SvgPicture.asset(activeUri, height: 40.0) : null,
      );

  static final BottomNavBarItem home = _createDefault(
    'assets/icons/home_unselected.svg',
    'Home',
    'assets/icons/home_selected.svg',
  );

  static final BottomNavBarItem chat = _createDefault(
    'assets/icons/chat_unselected.svg',
    'Chat',
    'assets/icons/chat_selected.svg',
  );
}
