import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'orders_response_model.g.dart';

enum OrderStatus { NOT_STARTED, IN_PROCESS, DONE, CANCELLED }

@JsonSerializable()
class OrdersResponseModel extends Equatable {
  const OrdersResponseModel({
    required this.id,
    required this.name,
    required this.description,
    required this.status,
    required this.costPrice,
    required this.finalCost,
    required this.extraExpenses,
    required this.finalWeight,
    required this.marginFactor,
    required this.creationDate,
    required this.finishDate,
    required this.productId,
  });

  final int id;
  final String name;
  final String description;
  final OrderStatus status;
  final double costPrice;
  final double finalCost;
  final double extraExpenses;
  final double finalWeight;
  final double marginFactor;
  final DateTime creationDate;
  final DateTime? finishDate;
  final int productId;

  factory OrdersResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersResponseModelToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        status,
        costPrice,
        finalCost,
        extraExpenses,
        finalWeight,
        marginFactor,
        creationDate,
        finishDate,
        productId,
      ];
}
