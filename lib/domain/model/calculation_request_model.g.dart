// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculation_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalculationRequestModel _$CalculationRequestModelFromJson(
        Map<String, dynamic> json) =>
    CalculationRequestModel(
      extraExpenses: (json['extraExpenses'] as num).toDouble(),
      marginFactor: (json['marginFactor'] as num).toDouble(),
      finalWeight: (json['finalWeight'] as num).toDouble(),
      productId: (json['productId'] as num).toInt(),
    );

Map<String, dynamic> _$CalculationRequestModelToJson(
        CalculationRequestModel instance) =>
    <String, dynamic>{
      'extraExpenses': instance.extraExpenses,
      'marginFactor': instance.marginFactor,
      'finalWeight': instance.finalWeight,
      'productId': instance.productId,
    };
