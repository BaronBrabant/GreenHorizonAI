import 'package:auto_route/auto_route.dart';
import 'package:reward_tracker/home/home.dart';
import 'package:reward_tracker/chat/chat.dart';
import 'package:reward_tracker/views_wrapper/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:articles_repository/articles_repository.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  AppRouter();

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: WrapperRoute.page, children: [
          AutoRoute(path: 'home', page: HomeRoute.page, initial: true),
          AutoRoute(path: 'chat', page: ChatRoute.page)
        ]),
      ];
}
