class WeatherDetailsModel {
  final String condition;
  final String icon;
  final String name;
  final int temp;
  final int maxtemp;
  final int mintemp;
  final int maxwind;
  final int totalprecip;
  final int avgvis;
  final int avghumidity;

  WeatherDetailsModel({
    required this.condition,
    required this.icon,
    required this.name,
    required this.temp,
    required this.maxtemp,
    required this.mintemp,
    required this.maxwind,
    required this.totalprecip,
    required this.avgvis,
    required this.avghumidity,
  });

  factory WeatherDetailsModel.fromJson(Map<String, dynamic> json) {
    return WeatherDetailsModel(
      condition: json["day"]["condition"]["text"] ?? "Unknown",
      icon: "https:${json["day"]["condition"]["icon"] ?? ""}",
      name: json["location"]["name"] ?? "Unknown",
      temp: (json["day"]['avgtemp_c'] as num?)?.toInt() ?? 0,
      maxtemp: (json["day"]["maxtemp_c"] as num?)?.toInt() ?? 0,
      mintemp: (json["day"]["mintemp_c"] as num?)?.toInt() ?? 0,
      maxwind: (json["day"]["maxwind_mph"] as num?)?.toInt() ?? 0,
      totalprecip: (json["day"]["totalprecip_mm"] as num?)?.toInt() ?? 0,
      avgvis: (json["day"]["avgvis_km"] as num?)?.toInt() ?? 0,
      avghumidity: (json["day"]["avghumidity"] as num?)?.toInt() ?? 0,
    );
  }
}
