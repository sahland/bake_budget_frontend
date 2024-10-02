// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outgoings_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OutgoingsRequestModel _$OutgoingsRequestModelFromJson(
        Map<String, dynamic> json) =>
    OutgoingsRequestModel(
      name: json['name'] as String,
      cost: (json['cost'] as num).toDouble(),
    );

Map<String, dynamic> _$OutgoingsRequestModelToJson(
        OutgoingsRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'cost': instance.cost,
    };
