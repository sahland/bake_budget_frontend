// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsResponseModel _$ProductsResponseModelFromJson(
        Map<String, dynamic> json) =>
    ProductsResponseModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      weight: (json['weight'] as num).toDouble(),
    );

Map<String, dynamic> _$ProductsResponseModelToJson(
        ProductsResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'weight': instance.weight,
    };
