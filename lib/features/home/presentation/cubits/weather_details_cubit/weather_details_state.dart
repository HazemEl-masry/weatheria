part of 'weather_details_cubit.dart';

sealed class WeatherDetailsState extends Equatable {
  const WeatherDetailsState();

  @override
  List<Object> get props => [];
}

final class WeatherDetailsInitial extends WeatherDetailsState {}

final class WeatherDetailsLoading extends WeatherDetailsState {}

final class WeatherDetailsLoaded extends WeatherDetailsState {
  final WeatherDetailsModel weatherDetails;
  const WeatherDetailsLoaded({required this.weatherDetails});
}

final class WeatherDetailsError extends WeatherDetailsState {
  final String message;
  const WeatherDetailsError({required this.message});
}
