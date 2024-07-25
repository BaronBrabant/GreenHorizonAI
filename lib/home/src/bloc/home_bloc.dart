import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:articles_repository/articles_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.articlesRepository}) : super(const HomeState()) {
    on<Init>(_onInit);
    add(Init());
  }

  final ArticlesRepository articlesRepository;

  void _onInit(Init event, Emitter<HomeState> emit) async {
    print("models have been called");
    articlesRepository.createDummyArticles();
    print("dummy articles created");
    emit(state.copyWith(
      cityArticles: await articlesRepository.getCityArticles(),
      nationalArticles: await articlesRepository.getNationalArticles(),
      internationalArticles: await articlesRepository.getGlobalArticles(),
    ));

    for (var article in state.cityArticles) {
      print("article: ${article.title}");
      print("imgage link ${article.imageUrl}");
    }

    print("articles fetched ${state.cityArticles}");
  }
}
