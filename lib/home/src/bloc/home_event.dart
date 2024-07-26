part of 'home_bloc.dart';

class HomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class Init extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class OpenUrl extends HomeEvent {
  OpenUrl(this.value);

  final String value;

  @override
  List<Object?> get props => [value];
}
