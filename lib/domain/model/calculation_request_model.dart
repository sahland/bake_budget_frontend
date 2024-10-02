import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'calculation_request_model.g.dart';

@JsonSerializable()
class CalculationRequestModel extends Equatable {
  const CalculationRequestModel({
    required this.extraExpenses,
    required this.marginFactor,
    required this.finalWeight,
    required this.productId,
  });

  final double extraExpenses;
  final double marginFactor;
  final double finalWeight;
  final int productId;

  factory CalculationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CalculationRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$CalculationRequestModelToJson(this);

  @override
  List<Object> get props => [
        extraExpenses,
        marginFactor,
        finalWeight,
        productId,
      ];
}
