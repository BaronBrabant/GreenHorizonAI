import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reward_tracker/home/home.dart';
import 'package:auto_route/auto_route.dart';
import 'package:articles_repository/articles_repository.dart' as repo;

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const _InterTitle('Global'),
            _NewsWidgetHorizontalScroll(
              category: 'Global',
            ),
            const _InterTitle('National'),
            _NewsWidgetHorizontalScroll(category: 'National'),
            const _InterTitle('City'),
            _NewsWidgetHorizontalScroll(
                category: 'City', articles: state.cityArticles),
          ],
        ),
      );
    });
  }
}

/*
class Home extends StatelessWidget {
  const Home();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Welcome to our app',
          ),
        ],
      ));
    });
  }
}
*/

class _NewsWidgetHorizontalScroll extends StatelessWidget {
  _NewsWidgetHorizontalScroll({
    required this.category,
    this.articles,
  });

  final String category;
  final List<repo.Article>? articles;

  @override
  Widget build(BuildContext context) {
    print("THIS IS THE ARTICLES AS THE WIDGET IS BEING BUILT $articles");
    return Container(
      height: 226.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: articles != null ? articles!.length : 10,
        itemBuilder: (context, index) {
          print(
              "THIS IS THE ARTICLES AS THE WIDGET IS BEING BUILT ${articles?[index]}");
          print("IMAGE IS ${articles?[index].imageUrl}");
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

  void _showModalBottomSheet(BuildContext context) {
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
      width: 130.0,
      height: 130.0,
      fit: BoxFit.cover,
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) {
        return Image.asset(
          "assets/images/thumbnail_placeholder.png",
          fit: BoxFit.cover,
          width: 130.0,
          height: 130.0,
        );
      },
    );

    return GestureDetector(
        onTap: () {
          _showModalBottomSheet(context);
        },
        child: Container(
          width: 130.0,
          margin: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(16.0)),
                      child: image),
                ],
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  article.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: const TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                const Text('View More',
                    style: TextStyle(fontWeight: FontWeight.bold))
              ]),
            ],
          ),
        ));
  }
}

class _ExpandedArticleView extends StatelessWidget {
  const _ExpandedArticleView({
    required this.imageUrl,
    required this.title,
    required this.source,
    required this.category,
  });

  final String imageUrl;
  final String title;
  final String source;
  final String category;

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
          '$category Climate Change',
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10.0), // Spacer
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        const SizedBox(height: 20.0), // Spacer
        Container(
          width: 200,
          height: 100,
          color: Colors.grey[300], // Placeholder for the image or video
        ),
        const SizedBox(height: 20.0), // Spacer
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.'
            'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.'
            'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.'
            'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.'
            'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.'
            'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.'
            'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.'
            'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.'
            'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.'
            'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.'
            'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.'
            'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.'
            'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.'
            'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.'
            'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.'
            'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.'
            'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.'
            'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.'
            'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.0),
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
        const Text(
          'Source 1\nSource 2\nSource 3',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14.0),
        ),
        const SizedBox(height: 20.0), // Spacer
        ElevatedButton(
          onPressed: () {
            // Handle read more action
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
          ),
          child: const Text('Read more about it'),
        ),
        const SizedBox(height: 10.0), // Spacer
        TextButton(
          onPressed: () {
            // Handle ask follow up question action
          },
          child: const Text(
            'Ask follow up question',
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
