import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ingredients_response_model.g.dart';

@JsonSerializable()
class IngredientsResponseModel extends Equatable {
  const IngredientsResponseModel({
    required this.id,
    required this.name,
    required this.weight,
    required this.cost,
  });

  final int id;
  final String name;
  final double weight;
  final double cost;

  factory IngredientsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$IngredientsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$IngredientsResponseModelToJson(this);

  @override
  List<Object> get props => [
        id,
        name,
        weight,
        cost,
      ];
}
