import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ingredients_request_model.g.dart';

@JsonSerializable()
class IngredientsRequestModel extends Equatable {
  const IngredientsRequestModel({
    required this.name, 
    required this.weight,
    required this.cost,
  });

  final String name;
  final double weight;
  final double cost;

  factory IngredientsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$IngredientsRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$IngredientsRequestModelToJson(this);

  @override
  List<Object> get props => [
        name,
        weight,
        cost,
      ];
}
