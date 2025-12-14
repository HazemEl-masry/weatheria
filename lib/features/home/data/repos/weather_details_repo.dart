import 'package:dio/dio.dart';
import 'package:weather_app/core/services/api_services.dart';
import 'package:weather_app/features/home/data/models/weather_details_model.dart';

abstract class WeatherDetailsRepo {
  Future<WeatherDetailsModel> getWeatherDetails({required String cityName});
}

class WeatherDetailsRepoImpl implements WeatherDetailsRepo {
  @override
  Future<WeatherDetailsModel> getWeatherDetails({
    required String cityName,
  }) async {
    final ApiServices apiServices = ApiServices(Dio());

    final weatherData = await apiServices.getWeather(cityName: cityName);

    // Get the first forecast day (today)
    final firstDay = weatherData.forecast?.forecastday?.first;

    if (firstDay == null) {
      throw Exception('No forecast data available');
    }

    // Construct the JSON structure that WeatherDetailsModel.fromJson expects
    final jsonData = {
      'location': weatherData.location?.toJson(),
      'day': firstDay.day?.toJson(),
    };

    return WeatherDetailsModel.fromJson(jsonData);
  }
}
