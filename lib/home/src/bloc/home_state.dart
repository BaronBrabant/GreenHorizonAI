part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({
    this.cityArticles = const <Article>[],
    this.nationalArticles = const <Article>[],
    this.internationalArticles = const <Article>[],
  });

  final List<Article> cityArticles;
  final List<Article> nationalArticles;
  final List<Article> internationalArticles;

  @override
  List<Object?> get props =>
      [cityArticles, nationalArticles, internationalArticles];

  HomeState copyWith({
    List<Article>? cityArticles,
    List<Article>? nationalArticles,
    List<Article>? internationalArticles,
  }) {
    return HomeState(
      cityArticles: cityArticles ?? this.cityArticles,
      nationalArticles: nationalArticles ?? this.nationalArticles,
      internationalArticles:
          internationalArticles ?? this.internationalArticles,
    );
  }
}
