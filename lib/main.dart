import 'package:flutter/material.dart';
import 'home/home.dart';
import 'routes/routes.dart';
import 'package:provider/provider.dart';
import 'package:GreenHorizon/shared/shared.dart';
import 'chat/chat.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:db/db.dart';
import 'package:articles_repository/articles_repository.dart';

void main() async {
  //we need to get the API key here, maybe we can do a api call and save it locally in flutter_secure_storage package
  var fakeApiKey = "123";

  await dotenv.load(fileName: ".env");

  final dbClient = DbClient();
  dbClient.connect('test');
  final articlesRepository = ArticlesRepository(dbClient: dbClient);

  runApp(
    MultiProvider(
      providers: [
        Provider<HomeBloc>(
          create: (_) => HomeBloc(articlesRepository: articlesRepository),
        ),
        Provider<ChatBloc>(
          create: (_) => ChatBloc(dotenv.env['API_KEY'] ?? fakeApiKey),
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
