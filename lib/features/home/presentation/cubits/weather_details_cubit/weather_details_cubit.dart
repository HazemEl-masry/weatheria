import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/features/home/data/models/weather_details_model.dart';
import 'package:weather_app/features/home/data/repos/weather_details_repo.dart';

part 'weather_details_state.dart';

class WeatherDetailsCubit extends Cubit<WeatherDetailsState> {
  final WeatherDetailsRepo weatherDetailsRepo;
  WeatherDetailsCubit({required this.weatherDetailsRepo})
    : super(WeatherDetailsInitial());

  void getWeatherDetails({required String cityName}) async {
    emit(WeatherDetailsLoading());
    try {
      final weatherDetails = await weatherDetailsRepo.getWeatherDetails(
        cityName: cityName,
      );
      emit(WeatherDetailsLoaded(weatherDetails: weatherDetails));
    } catch (e) {
      emit(WeatherDetailsError(message: e.toString()));
    }
  }
}
