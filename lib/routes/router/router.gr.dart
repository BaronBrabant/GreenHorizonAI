// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ChatRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ChatRouteArgs>(
          orElse: () => ChatRouteArgs(apiKey: pathParams.getString('apiKey')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatPage(
          apiKey: args.apiKey,
          article: args.article,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    WrapperRoute.name: (routeData) {
      final args = routeData.argsAs<WrapperRouteArgs>(
          orElse: () => const WrapperRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrapperPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [ChatPage]
class ChatRoute extends PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    required String apiKey,
    Article? article,
    List<PageRouteInfo>? children,
  }) : super(
          ChatRoute.name,
          args: ChatRouteArgs(
            apiKey: apiKey,
            article: article,
          ),
          rawPathParams: {'apiKey': apiKey},
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const PageInfo<ChatRouteArgs> page = PageInfo<ChatRouteArgs>(name);
}

class ChatRouteArgs {
  const ChatRouteArgs({
    required this.apiKey,
    this.article,
  });

  final String apiKey;

  final Article? article;

  @override
  String toString() {
    return 'ChatRouteArgs{apiKey: $apiKey, article: $article}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WrapperPage]
class WrapperRoute extends PageRouteInfo<WrapperRouteArgs> {
  WrapperRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          WrapperRoute.name,
          args: WrapperRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'WrapperRoute';

  static const PageInfo<WrapperRouteArgs> page =
      PageInfo<WrapperRouteArgs>(name);
}

class WrapperRouteArgs {
  const WrapperRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'WrapperRouteArgs{key: $key}';
  }
}
