import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<AddTime>(_onAddTime);
  }

  void _onAddTime(AddTime event, Emitter<HomeState> emit) {
    emit(state.copyWith(totalTime: state.totalTime + event.value));
  }
}
