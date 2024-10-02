import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ingredients_in_product_response_model.g.dart';

@JsonSerializable()
class IngredientsInProductResponseModel extends Equatable {
  const IngredientsInProductResponseModel({
    required this.ingredientId,
    required this.productId,
    required this.weight,
  });

  final int ingredientId;
  final int productId;
  final double weight;

  factory IngredientsInProductResponseModel.fromJson(Map<String, dynamic> json) =>
      _$IngredientsInProductResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$IngredientsInProductResponseModelToJson(this);

  @override
  List<Object> get props => [
        ingredientId,
        productId,
        weight,
      ];
}
