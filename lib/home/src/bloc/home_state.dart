part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({
    this.totalTime = 0,
    this.weeklyTime = 0,
    this.dailyTime = 0,
    this.streak = 0,
  });

  final double totalTime;
  final double weeklyTime;
  final double dailyTime;
  final double streak;

  @override
  List<Object?> get props => [totalTime, weeklyTime, dailyTime, streak];

  HomeState copyWith({
    double? totalTime,
    double? weeklyTime,
    double? dailyTime,
    double? streak,
  }) {
    return HomeState(
        totalTime: totalTime ?? this.totalTime,
        weeklyTime: weeklyTime ?? this.weeklyTime,
        dailyTime: dailyTime ?? this.dailyTime,
        streak: streak ?? this.streak);
  }
}
