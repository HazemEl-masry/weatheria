// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DayModel _$DayModelFromJson(Map<String, dynamic> json) => DayModel(
      temp: (json['avgtemp_c'] as num?)?.toInt(),
      image: json['icon'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$DayModelToJson(DayModel instance) => <String, dynamic>{
      'avgtemp_c': instance.temp,
      'icon': instance.image,
      'date': instance.date,
    };
