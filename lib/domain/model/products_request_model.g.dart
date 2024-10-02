// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsRequestModel _$ProductsRequestModelFromJson(
        Map<String, dynamic> json) =>
    ProductsRequestModel(
      name: json['name'] as String,
      weight: (json['weight'] as num).toDouble(),
    );

Map<String, dynamic> _$ProductsRequestModelToJson(
        ProductsRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'weight': instance.weight,
    };
