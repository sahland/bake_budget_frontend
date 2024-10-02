// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredients_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IngredientsRequestModel _$IngredientsRequestModelFromJson(
        Map<String, dynamic> json) =>
    IngredientsRequestModel(
      name: json['name'] as String,
      weight: (json['weight'] as num).toDouble(),
      cost: (json['cost'] as num).toDouble(),
    );

Map<String, dynamic> _$IngredientsRequestModelToJson(
        IngredientsRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'weight': instance.weight,
      'cost': instance.cost,
    };
