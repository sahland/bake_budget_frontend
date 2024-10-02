import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'products_response_model.g.dart';

@JsonSerializable()
class ProductsResponseModel extends Equatable {
  const ProductsResponseModel({
    required this.id,
    required this.name,
    required this.weight,
  });

  final int id;
  final String name;
  final double weight;

  factory ProductsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsResponseModelToJson(this);

  @override
  List<Object> get props => [
        id,
        name,
        weight,
      ];
}
