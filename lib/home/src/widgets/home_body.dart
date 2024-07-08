import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reward_tracker/home/home.dart';
import 'package:auto_route/auto_route.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _InterTitle('Global'),
            _NewsWidgetHorizontalScroll(),
            _InterTitle('National'),
            _NewsWidgetHorizontalScroll(),
            _InterTitle('City'),
            _NewsWidgetHorizontalScroll(),
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

class _NewsWidget extends StatelessWidget {
  const _NewsWidget({
    required this.imageUrl,
    required this.title,
    required this.source,
  });

  final String imageUrl;
  final String title;
  final String source;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.0,
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(16.0)),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  width: 130.0,
                  height: 130.0,
                ),
              ),
            ],
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              title,
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
    );
  }
}

class _NewsWidgetHorizontalScroll extends StatelessWidget {
  const _NewsWidgetHorizontalScroll({
    this.imageUrl,
    this.title,
    this.source,
  });

  final String? imageUrl;
  final String? title;
  final String? source;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 226.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const _NewsWidget(
              imageUrl:
                  "https://media.nature.com/w1248/magazine-assets/d41586-024-02006-3/d41586-024-02006-3_27208596.jpg?as=webp",
              title: 'How climate change is hitting Europe: 3 health impacts',
              source: 'https://www.nature.com/articles/d41586-024-02006-3');
        },
      ),
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
