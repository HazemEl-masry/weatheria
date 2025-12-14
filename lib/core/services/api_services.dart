import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/features/home/data/models/weather_model/weather_model.dart';

part "api_services.g.dart";

@RestApi(baseUrl: "https://api.weatherapi.com/v1/")
abstract class ApiServices {
  factory ApiServices(Dio dio, {String? baseUrl}) = _ApiServices;

  @GET("forecast.json")
  Future<WeatherModel> getWeather({
    @Query("key") String key = "9a3d4cf02afc4a5cbaf182510250710",
    @Query("days") int days = 7,
    @Query("q") required String cityName,
  });
}
