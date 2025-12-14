part of 'day_weather_cubit.dart';

sealed class DayWeatherState extends Equatable {
  const DayWeatherState();

  @override
  List<Object> get props => [];
}

final class DayWeatherInitial extends DayWeatherState {}

final class DayWeatherLoading extends DayWeatherState {}

final class DayWeatherSuccess extends DayWeatherState {
  final List<DayModel> dayModel;
  const DayWeatherSuccess({required this.dayModel});
}

final class DayWeatherError extends DayWeatherState {
  final String message;
  const DayWeatherError({required this.message});
}
