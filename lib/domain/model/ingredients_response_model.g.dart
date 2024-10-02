// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredients_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IngredientsResponseModel _$IngredientsResponseModelFromJson(
        Map<String, dynamic> json) =>
    IngredientsResponseModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      weight: (json['weight'] as num).toDouble(),
      cost: (json['cost'] as num).toDouble(),
    );

Map<String, dynamic> _$IngredientsResponseModelToJson(
        IngredientsResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'weight': instance.weight,
      'cost': instance.cost,
    };
