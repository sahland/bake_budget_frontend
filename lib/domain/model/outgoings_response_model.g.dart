// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outgoings_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OutgoingsResponseModel _$OutgoingsResponseModelFromJson(
        Map<String, dynamic> json) =>
    OutgoingsResponseModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      cost: (json['cost'] as num).toDouble(),
    );

Map<String, dynamic> _$OutgoingsResponseModelToJson(
        OutgoingsResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cost': instance.cost,
    };
