class DayModel {
  final double avgTemp;
  final String icon;
  final String date;

  DayModel({required this.avgTemp, required this.icon, required this.date});

  factory DayModel.fromJson(Map<String, dynamic> json) {
    return DayModel(
      avgTemp: json['day']['avgtemp_c'].toDouble(),
      icon: 'https:${json['day']['condition']['icon']}',
      date: json['date'],
    );
  }
}
