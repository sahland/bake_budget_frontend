// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredients_in_product_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IngredientsInProductRequestModel _$IngredientsInProductRequestModelFromJson(
        Map<String, dynamic> json) =>
    IngredientsInProductRequestModel(
      ingredientId: (json['ingredientId'] as num).toInt(),
      productId: (json['productId'] as num).toInt(),
      weight: (json['weight'] as num).toDouble(),
    );

Map<String, dynamic> _$IngredientsInProductRequestModelToJson(
        IngredientsInProductRequestModel instance) =>
    <String, dynamic>{
      'ingredientId': instance.ingredientId,
      'productId': instance.productId,
      'weight': instance.weight,
    };
