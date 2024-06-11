part of 'home_bloc.dart';

class HomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddTime extends HomeEvent {
  AddTime({required this.value});

  final double value;

  @override
  List<Object?> get props => [value];
}
