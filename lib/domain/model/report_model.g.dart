// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReportModel _$ReportModelFromJson(Map<String, dynamic> json) => ReportModel(
      startCreatedAt: json['startCreatedAt'] as String,
      endCreatedAt: json['endCreatedAt'] as String,
      startFinishedAt: json['startFinishedAt'] as String,
      endFinishedAt: json['endFinishedAt'] as String,
    );

Map<String, dynamic> _$ReportModelToJson(ReportModel instance) =>
    <String, dynamic>{
      'startCreatedAt': instance.startCreatedAt,
      'endCreatedAt': instance.endCreatedAt,
      'startFinishedAt': instance.startFinishedAt,
      'endFinishedAt': instance.endFinishedAt,
    };
