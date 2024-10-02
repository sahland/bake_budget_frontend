import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'calculation_response_model.g.dart';

@JsonSerializable()
class CalculationResponseModel extends Equatable {
  const CalculationResponseModel({
    required this.costPrice,
    required this.finalCost,
  });

  final double costPrice;
  final double finalCost;

  factory CalculationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CalculationResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CalculationResponseModelToJson(this);

  @override
  List<Object> get props => [
        costPrice,
        finalCost,
      ];
}
