import 'package:flutter/material.dart';
import 'home/home.dart';
import 'routes/routes.dart';
import 'package:provider/provider.dart';
import 'package:reward_tracker/shared/shared.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<HomeBloc>(
          create: (_) => HomeBloc(),
        ),
        // Add other providers here
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeConfig.baseTheme,
      routerConfig: _appRouter.config(),
      builder: (context, router) {
        return router!;
      },
    );
  }
}
