import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'products_request_model.g.dart';

@JsonSerializable()
class ProductsRequestModel extends Equatable {
  const ProductsRequestModel({
    required this.name,
    required this.weight,
  });

  final String name;
  final double weight;

  factory ProductsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsRequestModelToJson(this);

  @override
  List<Object> get props => [
        name,
        weight,
      ];
}
