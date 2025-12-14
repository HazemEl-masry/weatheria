import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/features/home/data/models/day_model.dart';
import 'package:weather_app/features/home/data/repos/day_repo.dart';

part 'day_weather_state.dart';

class DayWeatherCubit extends Cubit<DayWeatherState> {
  DayWeatherCubit() : super(DayWeatherInitial());

  Future<void> getDayWeather({required String cityName}) async {
    emit(DayWeatherLoading());
    try {
      final dayModel = await DayRepoImpl().getDayWeather(cityName: cityName);
      emit(DayWeatherSuccess(dayModel: dayModel));
    } catch (e) {
      emit(DayWeatherError(message: e.toString()));
    }
  }
}
