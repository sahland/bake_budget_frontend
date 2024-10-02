import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'outgoings_response_model.g.dart';

@JsonSerializable()
class OutgoingsResponseModel extends Equatable {
  const OutgoingsResponseModel({
    required this.id,
    required this.name,
    required this.cost,
  });

  final int id;
  final String name;
  final double cost;

  factory OutgoingsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OutgoingsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$OutgoingsResponseModelToJson(this);

  @override
  List<Object> get props => [
        id,
        name,
        cost,
      ];
}
