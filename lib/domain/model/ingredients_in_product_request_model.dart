import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ingredients_in_product_request_model.g.dart';

@JsonSerializable()
class IngredientsInProductRequestModel extends Equatable {
  const IngredientsInProductRequestModel({
    required this.ingredientId,
    required this.productId,
    required this.weight,
  });

  final int ingredientId;
  final int productId;
  final double weight;

  factory IngredientsInProductRequestModel.fromJson(
          Map<String, dynamic> json) =>
      _$IngredientsInProductRequestModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$IngredientsInProductRequestModelToJson(this);

  @override
  List<Object> get props => [
        ingredientId,
        productId,
        weight,
      ];
}
