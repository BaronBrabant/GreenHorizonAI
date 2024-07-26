part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({
    this.cityArticles = const <Article>[],
    this.nationalArticles = const <Article>[],
    this.globalArticles = const <Article>[],
  });

  final List<Article> cityArticles;
  final List<Article> nationalArticles;
  final List<Article> globalArticles;

  @override
  List<Object?> get props => [cityArticles, nationalArticles, globalArticles];

  HomeState copyWith({
    List<Article>? cityArticles,
    List<Article>? nationalArticles,
    List<Article>? globalArticles,
  }) {
    return HomeState(
      cityArticles: cityArticles ?? this.cityArticles,
      nationalArticles: nationalArticles ?? this.nationalArticles,
      globalArticles: globalArticles ?? this.globalArticles,
    );
  }
}
