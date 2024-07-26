import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:articles_repository/articles_repository.dart';
import 'package:url_launcher/url_launcher.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.articlesRepository}) : super(const HomeState()) {
    on<Init>(_onInit);
    on<OpenUrl>(_onOpenUrl);
    add(Init());
  }

  final ArticlesRepository articlesRepository;

  void _onInit(Init event, Emitter<HomeState> emit) async {
    articlesRepository.createDummyArticles();
    emit(state.copyWith(
      cityArticles: await articlesRepository.getCityArticles(),
      nationalArticles: await articlesRepository.getNationalArticles(),
      globalArticles: await articlesRepository.getGlobalArticles(),
    ));
  }

  void _onOpenUrl(OpenUrl event, Emitter<HomeState> emit) async {
    var uri = Uri.parse(event.value);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $event.url';
    }
  }
}
