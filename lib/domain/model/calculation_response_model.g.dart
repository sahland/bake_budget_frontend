// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculation_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalculationResponseModel _$CalculationResponseModelFromJson(
        Map<String, dynamic> json) =>
    CalculationResponseModel(
      costPrice: (json['costPrice'] as num).toDouble(),
      finalCost: (json['finalCost'] as num).toDouble(),
    );

Map<String, dynamic> _$CalculationResponseModelToJson(
        CalculationResponseModel instance) =>
    <String, dynamic>{
      'costPrice': instance.costPrice,
      'finalCost': instance.finalCost,
    };
