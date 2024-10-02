// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredients_in_product_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IngredientsInProductResponseModel _$IngredientsInProductResponseModelFromJson(
        Map<String, dynamic> json) =>
    IngredientsInProductResponseModel(
      ingredientId: (json['ingredientId'] as num).toInt(),
      productId: (json['productId'] as num).toInt(),
      weight: (json['weight'] as num).toDouble(),
    );

Map<String, dynamic> _$IngredientsInProductResponseModelToJson(
        IngredientsInProductResponseModel instance) =>
    <String, dynamic>{
      'ingredientId': instance.ingredientId,
      'productId': instance.productId,
      'weight': instance.weight,
    };
