import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'orders_request_model.g.dart';

@JsonSerializable()
class OrdersRequestModel extends Equatable {
  const OrdersRequestModel({
    required this.name,
    required this.description,
    required this.extraExpenses,
    required this.finalWeight,
    required this.marginFactor,
    required this.productId,
  });

  final String name;
  final String description;
  final double extraExpenses;
  final double finalWeight;
  final double marginFactor;
  final int productId;

  factory OrdersRequestModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersRequestModelToJson(this);

  @override
  List<Object> get props => [
        name,
        description,
        extraExpenses,
        finalWeight,
        marginFactor,
        productId,
      ];
}
