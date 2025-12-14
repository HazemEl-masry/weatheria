import 'package:dio/dio.dart';
import 'package:weather_app/core/services/api_services.dart';
import 'package:weather_app/features/home/data/models/day_model.dart';

abstract class DayRepo {
  Future<List<DayModel>> getDayWeather({required String cityName});
}

class DayRepoImpl implements DayRepo {
  @override
  Future<List<DayModel>> getDayWeather({required String cityName}) async {
    final ApiServices apiServices = ApiServices(Dio());

    final weatherData = await apiServices.getWeather(cityName: cityName);

    final forecastDays = weatherData.forecast?.forecastday ?? [];

    return forecastDays
        .map((forecastDay) => DayModel.fromJson(forecastDay.toJson()))
        .toList();
  }
}
