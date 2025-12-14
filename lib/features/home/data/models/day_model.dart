import 'package:json_annotation/json_annotation.dart';

part 'day_model.g.dart';

@JsonSerializable()
class DayModel {
  @JsonKey(name: "avgtemp_c")
  int? temp;
  @JsonKey(name: "icon")
  String? image;
  String? date;

  DayModel({this.temp, this.image, this.date});

  factory DayModel.fromJson(Map<String, dynamic> json) =>
      _$DayModelFromJson(json);

  Map<String, dynamic> toJson() => _$DayModelToJson(this);
}
