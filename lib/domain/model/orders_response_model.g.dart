// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersResponseModel _$OrdersResponseModelFromJson(Map<String, dynamic> json) =>
    OrdersResponseModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      costPrice: (json['costPrice'] as num).toDouble(),
      finalCost: (json['finalCost'] as num).toDouble(),
      extraExpenses: (json['extraExpenses'] as num).toDouble(),
      finalWeight: (json['finalWeight'] as num).toDouble(),
      marginFactor: (json['marginFactor'] as num).toDouble(),
      creationDate: DateTime.parse(json['creationDate'] as String),
      finishDate: json['finishDate'] == null
          ? null
          : DateTime.parse(json['finishDate'] as String),
      productId: (json['productId'] as num).toInt(),
    );

Map<String, dynamic> _$OrdersResponseModelToJson(
        OrdersResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'costPrice': instance.costPrice,
      'finalCost': instance.finalCost,
      'extraExpenses': instance.extraExpenses,
      'finalWeight': instance.finalWeight,
      'marginFactor': instance.marginFactor,
      'creationDate': instance.creationDate.toIso8601String(),
      'finishDate': instance.finishDate?.toIso8601String(),
      'productId': instance.productId,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.NOT_STARTED: 'NOT_STARTED',
  OrderStatus.IN_PROCESS: 'IN_PROCESS',
  OrderStatus.DONE: 'DONE',
  OrderStatus.CANCELLED: 'CANCELLED',
};
