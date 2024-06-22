import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home/home.dart';
import 'routes/routes.dart';
import 'package:provider/provider.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _appRouter.config(),
      builder: (context, router) {
        return router!;
      },
    );
  }
}
