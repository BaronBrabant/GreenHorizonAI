import 'package:auto_route/auto_route.dart';
import 'package:reward_tracker/home/home.dart';
import 'package:reward_tracker/chat/chat.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  AppRouter();

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/HomeRoute', page: HomeRoute.page, initial: true),
        AutoRoute(path: '/ChatRoute', page: ChatRoute.page),
      ];
}
