import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:GreenHorizon/home/home.dart';
import 'package:auto_route/auto_route.dart';
import 'package:articles_repository/articles_repository.dart' as repo;
import 'package:GreenHorizon/shared/shared.dart';
import 'package:GreenHorizon/routes/routes.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const LocationBar(),
            const _InterTitle('City'),
            _NewsWidgetHorizontalScroll(
                category: 'City', articles: state.cityArticles),
            const _InterTitle('National'),
            _NewsWidgetHorizontalScroll(
                category: 'National', articles: state.nationalArticles),
            const _InterTitle('Global'),
            _NewsWidgetHorizontalScroll(
                category: 'Global', articles: state.globalArticles),
          ],
        ),
      );
    });
  }
}

class _NewsWidgetHorizontalScroll extends StatelessWidget {
  _NewsWidgetHorizontalScroll({
    required this.category,
    this.articles,
  });

  final String category;
  final List<repo.Article>? articles;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 226.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: articles != null ? articles!.length : 10,
        itemBuilder: (context, index) {
          return articles != null
              ? _NewsWidget(
                  article: articles![index],
                )
              : _NewsWidget(
                  article: repo.Article(
                      id: "dummy",
                      type: category,
                      title:
                          "How climate change is hitting Europe: 3 health impacts",
                      createdAt: DateTime.now(),
                      uri: "https://www.nature.com/articles/d41586-024-02006-3",
                      read: false,
                      body: "Lorem Ipsum",
                      imageUrl:
                          "https://media.nature.com/w1248/magazine-assets/d41586-024-02006-3/d41586-024-02006-3_27208596.jpg?as=webp"));
        },
      ),
    );
    ;
  }
}

class _NewsWidget extends StatelessWidget {
  const _NewsWidget({
    required this.article,
  });

  final repo.Article article;

  void _showModalBottomSheet(BuildContext context, Image image) {
    showModalBottomSheet<void>(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.85,
          child: SingleChildScrollView(
            child: _ExpandedArticleView(
              imageUrl: article.imageUrl!,
              title: article.title,
              source: article.uri,
              category: article.type,
              body: article.body,
              image: image,
              article: article,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var image = Image.network(
      article.imageUrl!,
      fit: BoxFit.cover,
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) {
        return Image.asset(
          "assets/images/thumbnail_placeholder.png",
          fit: BoxFit.cover,
        );
      },
    );

    return GestureDetector(
        onTap: () {
          _showModalBottomSheet(context, image);
        },
        child: ArticleCard(article: article, image: image));
  }
}

class _ExpandedArticleView extends StatelessWidget {
  const _ExpandedArticleView(
      {required this.imageUrl,
      required this.title,
      required this.source,
      required this.body,
      required this.category,
      required this.image,
      required this.article});

  final String imageUrl;
  final String title;
  final String source;
  final String category;
  final String body;
  final Image image;
  final repo.Article article;

  String capitalizeFirstLetter(String input) {
    if (input.isEmpty) {
      return input;
    }
    return input[0].toUpperCase() + input.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: 40,
          height: 5,
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(2.5),
          ),
        ),
        const SizedBox(height: 20.0), // Spacer
        Text(
          '${capitalizeFirstLetter(category)} Climate Change',
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10.0), // Spacer
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            title,
            textAlign: TextAlign.left,
            style: const TextStyle(fontSize: 16.0),
          ),
        ),
        const SizedBox(height: 20.0), // Spacer

        SizedBox(
          height: 200.0,
          width: 200.0,
          child: image,
        ),
        const SizedBox(height: 20.0), // Spacer
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            body,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14.0),
          ),
        ),
        const SizedBox(height: 20.0), // Spacer
        const Text(
          'Trusted Sources:',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          source,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14.0),
        ),
        const SizedBox(height: 20.0), // Spacer
        ElevatedButton(
          onPressed: () {
            AutoRouter.of(context).push(ChatRoute(
              apiKey: dotenv.env['API_KEY']!,
              article: article,
            ));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
          ),
          child: const Text('Discuss with AI assistant'),
        ),
        const SizedBox(height: 10.0), // Spacer
        TextButton(
          onPressed: () {
            context.read<HomeBloc>().add(OpenUrl(source));
          },
          child: const Text(
            'Open article in browser',
            style: TextStyle(color: Colors.green),
          ),
        ),
        const SizedBox(height: 20.0), // Spacer at the bottom
      ],
    );
  }
}

class _InterTitle extends StatelessWidget {
  const _InterTitle(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class LocationBar extends StatelessWidget {
  const LocationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: const TextField(
          decoration: InputDecoration(
            hintText: 'Belgium, Brussels',
            hintStyle: TextStyle(fontSize: 16.0),
            prefixIcon: Icon(Icons.location_on, color: Colors.grey),
            border: InputBorder.none, // Remove the border
            enabledBorder: InputBorder.none, // Remove the enabled border
            focusedBorder: InputBorder.none, // Remove the focused border
            contentPadding:
                EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          ),
        ),
      ),
    );
  }
}
