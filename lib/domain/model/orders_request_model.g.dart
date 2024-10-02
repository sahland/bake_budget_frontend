// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersRequestModel _$OrdersRequestModelFromJson(Map<String, dynamic> json) =>
    OrdersRequestModel(
      name: json['name'] as String,
      description: json['description'] as String,
      extraExpenses: (json['extraExpenses'] as num).toDouble(),
      finalWeight: (json['finalWeight'] as num).toDouble(),
      marginFactor: (json['marginFactor'] as num).toDouble(),
      productId: (json['productId'] as num).toInt(),
    );

Map<String, dynamic> _$OrdersRequestModelToJson(OrdersRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'extraExpenses': instance.extraExpenses,
      'finalWeight': instance.finalWeight,
      'marginFactor': instance.marginFactor,
      'productId': instance.productId,
    };
