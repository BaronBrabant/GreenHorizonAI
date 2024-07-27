import 'package:flutter/material.dart';
import "package:articles_repository/articles_repository.dart" as repo;

class ArticleCard extends StatelessWidget {
  ArticleCard(
      {required this.article, required this.image, this.chatView = false});

  final repo.Article article;
  final Image image;
  final bool chatView;

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
                  child: SizedBox(height: 130.0, width: 130.0, child: image)),
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
            if (!chatView)
              const Text('View More',
                  style: TextStyle(fontWeight: FontWeight.bold))
          ]),
        ],
      ),
    );
  }
}
